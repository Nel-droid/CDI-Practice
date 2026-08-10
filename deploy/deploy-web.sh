#!/usr/bin/env bash
# Build the frontend and publish it to the S3 static site. Run LOCALLY (or in CI),
# from a machine with the AWS CLI configured and the VITE_* build vars set.
#   ./deploy/deploy-web.sh
set -euo pipefail

BUCKET="${S3_BUCKET:-cdi-practice-frontend}"

cd "$(dirname "$0")/.."  # repo root

# VITE_* vars are baked into the build. They must be present in your shell/.env
# at build time (client-safe values only: Supabase URL + anon key, Paddle env +
# client token + price IDs). NEVER put server secrets in the build.
echo "==> Building frontend (Vite -> dist/)"
npm ci
npm run build

echo "==> Syncing dist/ to s3://$BUCKET"
aws s3 sync dist/ "s3://$BUCKET" --delete

echo "==> Done. If Cloudflare caches static assets, purge the cache (or rely on hashed filenames)."
