#!/usr/bin/env bash
# 99-teardown.sh -- delete the resource group and the cross-RG Foundry role.
#
# Run from the repo root: bash src/scripts/99-teardown.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

if [[ -f "${SRC_DIR}/.env" ]]; then
  # shellcheck disable=SC1091
  set -a; source "${SRC_DIR}/.env"; set +a
fi

: "${RESOURCE_GROUP:?RESOURCE_GROUP must be set in src/.env}"

if [[ "${1:-}" != "--yes" ]]; then
  read -r -p "Delete resource group ${RESOURCE_GROUP}? [y/N] " confirm
  [[ "${confirm}" =~ ^[Yy]$ ]] || { echo "Aborted."; exit 1; }
fi

# Capture UAMI principal + Foundry scope before the RG deletion blows them away.
UAMI_PRINCIPAL_ID="${UAMI_PRINCIPAL_ID:-}"
if [[ -z "${UAMI_PRINCIPAL_ID}" ]]; then
  UAMI_PRINCIPAL_ID="$(az identity list -g "${RESOURCE_GROUP}" \
    --query "[0].principalId" -o tsv 2>/dev/null || true)"
fi

echo "Deleting resource group ${RESOURCE_GROUP} (no-wait)..."
az group delete --name "${RESOURCE_GROUP}" --yes --no-wait

if [[ -n "${UAMI_PRINCIPAL_ID}" && -n "${FOUNDRY_PROJECT_RESOURCE_ID:-}" ]]; then
  echo "Removing 'Azure AI User' role assignment on Foundry project..."
  az role assignment delete \
    --assignee "${UAMI_PRINCIPAL_ID}" \
    --role "Azure AI User" \
    --scope "${FOUNDRY_PROJECT_RESOURCE_ID}" --only-show-errors || true
else
  cat <<EOF

Skipped Foundry role cleanup -- set UAMI_PRINCIPAL_ID and FOUNDRY_PROJECT_RESOURCE_ID
in src/.env (or pass them as env vars) to remove the cross-RG role assignment.

EOF
fi

echo "Teardown initiated. Verify with: az group exists -n ${RESOURCE_GROUP}"
