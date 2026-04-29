# AB-100 POC: Foundry agent + MCP + ACA + APIM

A classroom proof of concept for **AB-100: Agentic AI Business Solutions Architect**, Hour 3 (Deploy).
A Microsoft Foundry agent is wrapped as a remote MCP server, deployed to Azure Container Apps, and
fronted by Azure API Management. Five commands provision the stack; one command tears it down.

## Architecture

```
caller --> APIM (Consumption tier, subscription key)
           |
           v
        ACA Container App  (1 replica, public ingress, UAMI)
           |  Python MCP server (FastMCP, /mcp POST, /health GET)
           v
        Azure AI Foundry Agent Service  (existing project + agent)
```

The POC consumes an existing Foundry project and agent. It does not provision Foundry. The UAMI
attached to the Container App authenticates outbound to Foundry via `DefaultAzureCredential`.

> **APIM tier note.** APIM has a first-class "MCP server" feature that auto-generates an MCP facade
> from any REST API; that feature requires Basic v2, Standard v2, or Premium. This POC does not use
> it. We run our own MCP server in ACA and use APIM as a plain HTTP gateway in front of it, which
> works fine on Consumption tier and costs effectively zero for a 4-hour class. Two related
> Consumption-tier limits worth flagging in Hour 4: (1) the `rate-limit-by-key` policy is not
> available on Consumption (we use the simpler instance-wide `rate-limit` instead), and (2) the
> APIM developer portal is also unavailable on Consumption.

## Prerequisites

- Azure CLI (`az`) logged in to a subscription where you can create resource groups
- `jq` for parsing deploy outputs
- An existing Foundry project + agent (the POC reads `PROJECT_ENDPOINT` and `AGENT_ID`)
- Bash shell (Git Bash, WSL, or macOS/Linux)

Docker is **not** required; `az acr build` runs the image build in Azure.

## Setup

```bash
cp src/.env.example src/.env
# fill in AZURE_SUBSCRIPTION_ID, RESOURCE_GROUP, PROJECT_ENDPOINT, AGENT_ID,
# FOUNDRY_PROJECT_RESOURCE_ID, APIM_PUBLISHER_EMAIL
```

## The five-command demo

```bash
# 1. Log in and select the subscription
bash src/scripts/00-login.sh

# 2. Create RG + ACR + UAMI, then build and push the image to ACR
bash src/scripts/01-build-and-push.sh
# Set CONTAINER_IMAGE in src/.env to the printed <acr>.azurecr.io/ab100-mcp:latest

# 3. Deploy ACA + APIM + wiring
bash src/scripts/02-deploy-infra.sh

# 4. Grant the UAMI access to the Foundry project (one-time, cross-RG)
az role assignment create \
  --assignee "$UAMI_PRINCIPAL_ID" \
  --role "Azure AI User" \
  --scope "$FOUNDRY_PROJECT_RESOURCE_ID"

# 5. Smoke test through APIM
bash src/scripts/03-test.sh
```

## What gets deployed

| Resource                          | Purpose                                              | Module                          |
| --------------------------------- | ---------------------------------------------------- | ------------------------------- |
| User-assigned managed identity    | Outbound auth to Foundry; ACR pull                   | `infra/modules/identity.bicep`  |
| Log Analytics workspace           | ACA console + system logs                            | `infra/modules/logs.bicep`      |
| Azure Container Registry (Basic)  | Hosts the MCP image; AcrPull via UAMI                | `infra/modules/acr.bicep`       |
| ACA environment + Container App   | Runs the MCP server; public ingress, port 8080       | `infra/modules/aca.bicep`       |
| APIM (Consumption)                | Gateway, subscription key, rate limit                | `infra/modules/apim.bicep`      |

## Verification

| Check                                   | Command (after deploy)                                                        |
| --------------------------------------- | ----------------------------------------------------------------------------- |
| Container alive                          | `az containerapp revision list -g $RG -n $ACA_NAME`                          |
| Logs                                    | `az containerapp logs tail -g $RG -n $ACA_NAME --tail 50`                    |
| ACA `/health` (direct, bypassing APIM)  | `curl https://$ACA_FQDN/health`                                              |
| APIM rejects no key                     | `curl -X POST $APIM_GATEWAY/mcp -d '{}'` (expect 401)                        |
| APIM passes through                     | `bash src/scripts/03-test.sh`                                                |
| Foundry replies                         | The `tools/call` step prints a non-empty `result.content[0].text`            |

## Troubleshooting

| Symptom                                  | Likely cause                                                   |
| ---------------------------------------- | -------------------------------------------------------------- |
| 401 from APIM                             | Missing or wrong `Ocp-Apim-Subscription-Key` header           |
| 403 from Foundry (visible in ACA logs)    | UAMI is missing the **Azure AI User** role on the project     |
| 504 from APIM after a long pause          | Foundry run exceeded 120s; raise `forward-request timeout`    |
| Container restart loops                   | `/health` not reachable; check the app started on PORT 8080   |
| `DefaultAzureCredential` errors in logs   | `AZURE_CLIENT_ID` env var not picked up; redeploy ACA module  |

## Teardown

```bash
bash src/scripts/99-teardown.sh
# verifies with: az group exists -n $RESOURCE_GROUP
```

The script also removes the cross-RG `Azure AI User` role assignment from the Foundry project if
`UAMI_PRINCIPAL_ID` and `FOUNDRY_PROJECT_RESOURCE_ID` are set in `src/.env`.

## What is intentionally excluded

- **No CI/CD.** A bash script reads better on stage than a workflow file.
- **No Key Vault.** No secrets to store; the UAMI handles outbound auth.
- **No VNet, no private endpoints.** Public ingress is gated by the APIM subscription key.
- **No autoscale.** A single replica gives predictable cold-start behavior for the demo.
- **No custom domain.** `*.azure-api.net` and `*.azurecontainerapps.io` are fine.
- **No App Insights or dashboards.** Log Analytics + `az containerapp logs tail` is enough.
- **No Foundry provisioning.** Bring your own project and agent.

## AB-100 mapping

- **Hour 3.3 (ALM and IaC).** Modular Bicep, parameterized deploy, idempotent re-deploy, clean
  teardown -- declarative agent infrastructure end to end.
- **Hour 3.1 (Monitoring).** Log Analytics wired to the ACA environment; demo with
  `az containerapp logs tail` and a one-line KQL query against `ContainerAppConsoleLogs_CL`.
- **Hour 3.2 (Deployment topology).** Gateway-in-front-of-compute is the canonical agent pattern
  students will replicate.
- **Bridge to Hour 4.** Add a `validate-jwt` policy, named-values-from-Key-Vault, an
  `azure-openai-token-limit` policy, and Defender for APIs on top of this same artifact -- zero
  structural change required.
