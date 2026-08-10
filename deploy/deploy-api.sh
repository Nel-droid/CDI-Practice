#!/usr/bin/env bash
# Deploy / update the CDI Practice API on the EC2 box. Run ON the server.
#   ./deploy/deploy-api.sh
set -euo pipefail

BRANCH="${1:-feat/aws-migration}"   # switch to 'main' after the migration branch is merged

cd "$(dirname "$0")/.."              # repo root

echo "==> Fetching $BRANCH"
git fetch --all --prune
git checkout "$BRANCH"
git pull --ff-only origin "$BRANCH"

echo "==> Installing runtime deps (no devDeps — the API doesn't need Vite/Vitest)"
npm ci --omit=dev

# Sanity: a .env with the server secrets must exist in the repo root (chmod 600).
if [ ! -f .env ]; then
  echo "!! No .env found in $(pwd). Create it (see deploy/.env.server.example) before starting." >&2
  exit 1
fi

echo "==> (Re)starting under PM2"
pm2 reload deploy/ecosystem.config.cjs --update-env || pm2 start deploy/ecosystem.config.cjs
pm2 save

echo "==> Health check"
sleep 1
curl -fsS http://127.0.0.1:8080/health && echo "  <- API healthy"
