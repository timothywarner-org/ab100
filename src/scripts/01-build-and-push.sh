#!/usr/bin/env bash
# 01-build-and-push.sh -- create RG, deploy ACR + UAMI, then az acr build the image.
#
# This pre-deploys just identity.bicep and acr.bicep so we have a registry to
# push into BEFORE the full main.bicep deploy. The full deploy (02) then sets
# containerImage to <acr>.azurecr.io/ab100-mcp:<short-sha> and lights up ACA.
#
# Run from the repo root: bash src/scripts/01-build-and-push.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
REPO_ROOT="$(cd "${SRC_DIR}/.." && pwd)"

if [[ -f "${SRC_DIR}/.env" ]]; then
  # shellcheck disable=SC1091
  set -a; source "${SRC_DIR}/.env"; set +a
fi

: "${RESOURCE_GROUP:?RESOURCE_GROUP must be set in src/.env}"
: "${LOCATION:=eastus2}"
: "${NAME_PREFIX:=ab100}"

az group create --name "${RESOURCE_GROUP}" --location "${LOCATION}" --only-show-errors >/dev/null

# Bootstrap deployment: only identity + acr. Uses an inline template so we do
# not need a second main.bicep variant.
BOOTSTRAP_TEMPLATE="$(mktemp -t ab100-bootstrap-XXXXXX.bicep)"
cat > "${BOOTSTRAP_TEMPLATE}" <<'BICEP'
targetScope = 'resourceGroup'
param namePrefix string
param location string = resourceGroup().location
var tags = { project: 'ab100', scenario: 'foundry-mcp-poc' }
module identity '../infra/modules/identity.bicep' = {
  name: 'identity'
  params: { namePrefix: namePrefix, location: location, tags: tags }
}
module acr '../infra/modules/acr.bicep' = {
  name: 'acr'
  params: {
    namePrefix: namePrefix
    location: location
    tags: tags
    uamiPrincipalId: identity.outputs.principalId
  }
}
output acrName string = acr.outputs.name
output acrLoginServer string = acr.outputs.loginServer
BICEP

# Place bootstrap next to infra/ so the module relative paths resolve.
BOOTSTRAP_PATH="${SRC_DIR}/infra/.bootstrap.bicep"
mv "${BOOTSTRAP_TEMPLATE}" "${BOOTSTRAP_PATH}"
trap 'rm -f "${BOOTSTRAP_PATH}"' EXIT

echo "Deploying bootstrap (identity + acr) to ${RESOURCE_GROUP}..."
BOOTSTRAP_OUT="$(az deployment group create \
  --resource-group "${RESOURCE_GROUP}" \
  --template-file "${BOOTSTRAP_PATH}" \
  --parameters namePrefix="${NAME_PREFIX}" location="${LOCATION}" \
  --query "properties.outputs" -o json --only-show-errors)"

ACR_NAME="$(echo "${BOOTSTRAP_OUT}" | jq -r '.acrName.value')"
ACR_LOGIN_SERVER="$(echo "${BOOTSTRAP_OUT}" | jq -r '.acrLoginServer.value')"

GIT_SHA="$(git -C "${REPO_ROOT}" rev-parse --short HEAD 2>/dev/null || echo "manual")"
IMAGE_TAG="${ACR_LOGIN_SERVER}/ab100-mcp:${GIT_SHA}"
LATEST_TAG="${ACR_LOGIN_SERVER}/ab100-mcp:latest"

echo "Building image ${IMAGE_TAG} via az acr build..."
az acr build \
  --registry "${ACR_NAME}" \
  --image "ab100-mcp:${GIT_SHA}" \
  --image "ab100-mcp:latest" \
  "${SRC_DIR}/app" --only-show-errors

cat <<EOF

Build complete.

  ACR_NAME=${ACR_NAME}
  ACR_LOGIN_SERVER=${ACR_LOGIN_SERVER}
  IMAGE=${IMAGE_TAG}
  LATEST=${LATEST_TAG}

Add or update CONTAINER_IMAGE in src/.env, then run 02-deploy-infra.sh:

  CONTAINER_IMAGE=${LATEST_TAG}

EOF
