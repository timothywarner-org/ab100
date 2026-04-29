#!/usr/bin/env bash
# 00-login.sh -- log in to Azure and select the subscription.
#
# Sources src/.env (relative to repo root) for AZURE_SUBSCRIPTION_ID. Run from
# the repo root: bash src/scripts/00-login.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

if [[ -f "${SRC_DIR}/.env" ]]; then
  # shellcheck disable=SC1091
  set -a; source "${SRC_DIR}/.env"; set +a
fi

: "${AZURE_SUBSCRIPTION_ID:?AZURE_SUBSCRIPTION_ID must be set in src/.env}"

if ! az account show --only-show-errors >/dev/null 2>&1; then
  az login --only-show-errors >/dev/null
fi

az account set --subscription "${AZURE_SUBSCRIPTION_ID}"
az account show --query "{name:name, id:id, tenantId:tenantId}" -o table
