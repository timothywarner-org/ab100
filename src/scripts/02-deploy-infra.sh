#!/usr/bin/env bash
# 02-deploy-infra.sh -- deploy main.bicep (identity, logs, acr, aca, apim).
#
# Re-running is idempotent. ACR + UAMI created by 01 are reconciled, not
# re-created. Run from the repo root: bash src/scripts/02-deploy-infra.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

if [[ -f "${SRC_DIR}/.env" ]]; then
  # shellcheck disable=SC1091
  set -a; source "${SRC_DIR}/.env"; set +a
fi

: "${RESOURCE_GROUP:?RESOURCE_GROUP must be set in src/.env}"
: "${PROJECT_ENDPOINT:?PROJECT_ENDPOINT must be set in src/.env}"
: "${AGENT_ID:?AGENT_ID must be set in src/.env}"
: "${CONTAINER_IMAGE:?CONTAINER_IMAGE must be set in src/.env (run 01-build-and-push.sh first)}"
: "${APIM_PUBLISHER_EMAIL:?APIM_PUBLISHER_EMAIL must be set in src/.env}"
: "${LOCATION:=eastus2}"
: "${NAME_PREFIX:=ab100}"

echo "Deploying main.bicep to ${RESOURCE_GROUP}..."
DEPLOY_OUT="$(az deployment group create \
  --resource-group "${RESOURCE_GROUP}" \
  --template-file "${SRC_DIR}/infra/main.bicep" \
  --parameters "@${SRC_DIR}/infra/main.parameters.json" \
  --parameters \
    namePrefix="${NAME_PREFIX}" \
    location="${LOCATION}" \
    projectEndpoint="${PROJECT_ENDPOINT}" \
    agentId="${AGENT_ID}" \
    containerImage="${CONTAINER_IMAGE}" \
    apimPublisherEmail="${APIM_PUBLISHER_EMAIL}" \
  --query "properties.outputs" -o json --only-show-errors)"

ACA_FQDN="$(echo "${DEPLOY_OUT}" | jq -r '.acaFqdn.value')"
ACA_NAME="$(echo "${DEPLOY_OUT}" | jq -r '.acaName.value')"
APIM_GATEWAY_URL="$(echo "${DEPLOY_OUT}" | jq -r '.apimGatewayUrl.value')"
APIM_NAME="$(echo "${DEPLOY_OUT}" | jq -r '.apimName.value')"
UAMI_PRINCIPAL_ID="$(echo "${DEPLOY_OUT}" | jq -r '.uamiPrincipalId.value')"
UAMI_CLIENT_ID="$(echo "${DEPLOY_OUT}" | jq -r '.uamiClientId.value')"

cat <<EOF

Deploy complete.

  ACA_NAME=${ACA_NAME}
  ACA_FQDN=${ACA_FQDN}
  APIM_NAME=${APIM_NAME}
  APIM_GATEWAY_URL=${APIM_GATEWAY_URL}
  UAMI_PRINCIPAL_ID=${UAMI_PRINCIPAL_ID}
  UAMI_CLIENT_ID=${UAMI_CLIENT_ID}

Next steps:
  1. Grant the UAMI access to your Foundry project (one-time, cross-RG):
       az role assignment create \\
         --assignee ${UAMI_PRINCIPAL_ID} \\
         --role "Azure AI User" \\
         --scope "\${FOUNDRY_PROJECT_RESOURCE_ID}"

  2. Smoke test through APIM:
       bash src/scripts/03-test.sh

EOF
