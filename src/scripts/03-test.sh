#!/usr/bin/env bash
# 03-test.sh -- end-to-end smoke test from APIM through ACA to Foundry.
#
# Runs three checks:
#   (a) ACA /health responds 200 (direct, bypassing APIM)
#   (b) APIM rejects requests without a subscription key (expect 401)
#   (c) MCP tools/list lists ask_agent
#   (d) MCP tools/call ask_agent returns a non-empty answer

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

if [[ -f "${SRC_DIR}/.env" ]]; then
  # shellcheck disable=SC1091
  set -a; source "${SRC_DIR}/.env"; set +a
fi

: "${RESOURCE_GROUP:?RESOURCE_GROUP must be set in src/.env}"
: "${NAME_PREFIX:=ab100}"

ACA_NAME="$(az containerapp list -g "${RESOURCE_GROUP}" \
  --query "[?starts_with(name, '${NAME_PREFIX}-aca')].name | [0]" -o tsv)"
APIM_NAME="$(az apim list -g "${RESOURCE_GROUP}" \
  --query "[?starts_with(name, '${NAME_PREFIX}-apim')].name | [0]" -o tsv)"

ACA_FQDN="$(az containerapp show -g "${RESOURCE_GROUP}" -n "${ACA_NAME}" \
  --query properties.configuration.ingress.fqdn -o tsv)"
APIM_GATEWAY_URL="$(az apim show -g "${RESOURCE_GROUP}" -n "${APIM_NAME}" \
  --query gatewayUrl -o tsv)"
SUBSCRIPTION_ID="$(az account show --query id -o tsv)"
# Use direct ARM listSecrets to avoid loading az's apim extension. (Some
# corrupted local extensions, e.g. a half-installed bastion ext, can prevent
# the apim subgroup from loading at all.)
SUB_KEY="$(az rest --method post \
  --url "https://management.azure.com/subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RESOURCE_GROUP}/providers/Microsoft.ApiManagement/service/${APIM_NAME}/subscriptions/foundry-mcp-sub/listSecrets?api-version=2023-05-01-preview" \
  --query primaryKey -o tsv)"

echo
echo "(a) Direct ACA /health (bypassing APIM)..."
curl -sS -o /dev/null -w "  HTTP %{http_code}\n" "https://${ACA_FQDN}/health"

echo
echo "(b) APIM without subscription key (expect 401)..."
curl -sS -o /dev/null -w "  HTTP %{http_code}\n" \
  -X POST "${APIM_GATEWAY_URL}/mcp" \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list"}' || true

echo
echo "(c) MCP tools/list through APIM..."
curl -sS -X POST "${APIM_GATEWAY_URL}/mcp" \
  -H "Ocp-Apim-Subscription-Key: ${SUB_KEY}" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list"}'
echo

echo
echo "(d) MCP tools/call ask_agent (real Foundry call -- may take 5-30s)..."
curl -sS -X POST "${APIM_GATEWAY_URL}/mcp" \
  -H "Ocp-Apim-Subscription-Key: ${SUB_KEY}" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{"jsonrpc":"2.0","id":2,"method":"tools/call","params":{"name":"ask_agent","arguments":{"question":"Summarize Azure Container Apps in one sentence."}}}'
echo
