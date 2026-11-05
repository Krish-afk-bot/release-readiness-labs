#!/bin/bash
set -euo pipefail

VERSION="${1:-${VERSION:-}}"

if [[ -z "$VERSION" || "$VERSION" == "latest" ]]; then
  echo "ERROR: an explicit release version (e.g. v2.3.0) is required; 'latest' is not allowed." >&2
  exit 1
fi

echo "Starting deployment..."
echo "Deploying version: ${VERSION}"
# Real deployment would run e.g.:
#   kubectl set image deployment/orderflow orderflow=orderflow:${VERSION}
#   kubectl rollout status deployment/orderflow --timeout=120s
echo "Deployment successful."
