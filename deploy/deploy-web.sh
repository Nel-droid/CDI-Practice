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
# --delete prunes old hashed build files, but the bucket ALSO hosts content
# images (logo, listening maps, writing charts) that are NOT part of dist/ —
# exclude them so they're never deleted by the frontend sync.
aws s3 sync dist/ "s3://$BUCKET" --delete \
  --exclude "assets/cdi-mark.svg" \
  --exclude "assets/listening-maps/*" \
  --exclude "assets/writing-charts/*"

echo "==> Done. If Cloudflare caches static assets, purge the cache (or rely on hashed filenames)."
