"""AB-100 classroom POC: Microsoft Foundry agent wrapped as an MCP server.

Runs an MCP streamable-HTTP server at /mcp with one tool, ask_agent, that
forwards a user question to an existing Foundry agent and returns the reply.

Designed for Azure Container Apps:
- Public ingress on PORT (default 8080).
- /mcp accepts MCP JSON-RPC over HTTP POST.
- /health is a separate GET endpoint for ACA HTTP probes.
- Auth to Foundry uses DefaultAzureCredential reading the user-assigned
  managed identity client id from AZURE_CLIENT_ID, set by the ACA Bicep.
"""

from __future__ import annotations

import contextlib
import logging
import os

import uvicorn
from azure.ai.projects import AIProjectClient
from azure.identity import DefaultAzureCredential
from mcp.server.fastmcp import FastMCP
from mcp.server.transport_security import TransportSecuritySettings
from starlette.applications import Starlette
from starlette.responses import JSONResponse
from starlette.routing import Mount, Route

LOG_LEVEL = os.environ.get("LOG_LEVEL", "INFO").upper()
PORT = int(os.environ.get("PORT", "8080"))
PROJECT_ENDPOINT = os.environ["PROJECT_ENDPOINT"]
AGENT_ID = os.environ["AGENT_ID"]

logging.basicConfig(level=LOG_LEVEL, format="%(asctime)s %(levelname)s %(name)s %(message)s")
logger = logging.getLogger("ab100-foundry-mcp")

_credential = DefaultAzureCredential()
_project = AIProjectClient(endpoint=PROJECT_ENDPOINT, credential=_credential)

# DNS rebinding protection rejects requests whose Host header is not in
# allowed_hosts (defaults to localhost only). APIM and ACA terminate traffic
# at public hostnames, so we widen the allow list. The subscription key
# enforced at APIM is the actual access control here.
_transport_security = TransportSecuritySettings(
    enable_dns_rebinding_protection=False,
    allowed_hosts=["*"],
    allowed_origins=["*"],
)

mcp = FastMCP(
    "ab100-foundry-agent",
    transport_security=_transport_security,
    # Stateless mode: every request stands alone, no session handshake. This
    # lets a single curl/Invoke-RestMethod hit /mcp without first calling
    # initialize, which is the sweet spot for class demos and APIM-fronted
    # MCP where session affinity is hard to guarantee.
    stateless_http=True,
    # Plain JSON responses instead of SSE; APIM does not need to be
    # streaming-aware, and JSON is simpler to read in front of a class.
    json_response=True,
)


AGENT_NAME = os.environ.get("AGENT_NAME", "ab100-demo-agent")

# Route Responses API calls through the Foundry managed/prompt agent. The
# agent's own model, instructions, tools (e.g. web_search), and reasoning
# effort are applied server-side; we do not pass model= or instructions= here
# (those would bypass the agent and hit the bare deployment).
# Source: https://learn.microsoft.com/azure/foundry/agents/how-to/migrate#migrate-runs-to-responses
_openai_client = _project.get_openai_client()


@mcp.tool()
def ask_agent(question: str) -> dict:
    """Ask the configured Foundry agent a single question and return its answer.

    Single-shot Responses API call routed through the named Foundry agent via
    agent_reference. The agent's instructions, tools, and reasoning settings
    apply server-side. No threads, no runs, no polling.
    """
    logger.info("ask_agent called: agent=%s question=%s",
                AGENT_NAME, question[:120])

    response = _openai_client.responses.create(
        input=question,
        extra_body={
            "agent_reference": {"name": AGENT_NAME, "type": "agent_reference"},
        },
    )

    answer_text = getattr(response, "output_text", "") or ""
    if not answer_text:
        for item in getattr(response, "output", []) or []:
            for part in getattr(item, "content", []) or []:
                txt = getattr(part, "text", None)
                if txt:
                    answer_text = txt
                    break
            if answer_text:
                break

    return {
        "answer": answer_text,
        "agent_name": AGENT_NAME,
        "agent_id": AGENT_ID,
        "response_id": getattr(response, "id", None),
    }


async def health(_request):
    return JSONResponse({"status": "ok"})


# streamable_http_app() already exposes the MCP endpoint at /mcp internally,
# so we mount it at the root rather than under /mcp (which would land at /mcp/mcp).
mcp_app = mcp.streamable_http_app()


@contextlib.asynccontextmanager
async def lifespan(_app):
    # The MCP session manager owns a background task group. It must be started
    # before any /mcp request arrives, otherwise the request handler raises
    # "Task group is not initialized."
    async with mcp.session_manager.run():
        yield


app = Starlette(
    debug=False,
    routes=[
        Route("/health", health, methods=["GET"]),
        Mount("/", app=mcp_app),
    ],
    lifespan=lifespan,
)


if __name__ == "__main__":
    uvicorn.run(
        app,
        host="0.0.0.0",
        port=PORT,
        log_level=LOG_LEVEL.lower(),
        # ACA terminates TLS in front of the container; treat all forwarded
        # headers as trusted so Starlette emits redirects with the original
        # https scheme (otherwise POST /mcp -> POST /mcp/ flips to http and
        # Invoke-WebRequest refuses to follow).
        proxy_headers=True,
        forwarded_allow_ips="*",
    )
