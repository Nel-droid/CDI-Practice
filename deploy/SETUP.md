# CDI Practice — AWS deployment runbook

Migration target: **EC2 (API) + S3 (static frontend) + Cloudflare (DNS/SSL)**.
Supabase and Paddle are unchanged. Routing is **Option A**: one hostname via
Cloudflare, `/api/*` → EC2 (nginx → Express), everything else → S3. No frontend
code changes, no CORS.

> Domain is templated as `cdi.example.com` — swap in the real one when purchased
> (nginx `server_name`, the Cloudflare Origin cert, and the DNS records).

---

## 0. Env vars — build-time vs runtime (important)

| Where it's needed | Vars | Notes |
|---|---|---|
| **Build time** (when you run `deploy-web.sh` to build the SPA for S3) | `VITE_SUPABASE_URL`, `VITE_SUPABASE_ANON_KEY` | Client-safe. Baked into the static bundle. **No server secrets here.** |
| **Runtime** (EC2 `.env`, loaded by the API) | `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, `VITE_SUPABASE_URL`, `VITE_SUPABASE_ANON_KEY`, `GEMINI_API_KEY`, (`GEMINI_MODEL`), `PORT`, `NODE_ENV` | Secrets. Live only on the box (`deploy/.env.server.example` → repo-root `.env`, chmod 600). |

> Billing (Paddle) is intentionally **excluded from this deployment** — no checkout UI, no webhook route, no Paddle env vars. The subscription work is preserved on the `feat/subscriptions` branch.

---

## 1. EC2 (you launch it)

- **Region:** us-east-1 · **Type:** t3.small · **OS:** Ubuntu 24.04 LTS · **Disk:** 20 GB gp3
- **Elastic IP:** allocate one and associate it (stable IP for the Cloudflare A record).
- **Security group** — see the exact inbound rules in the chat message.
- Port **8080 is NOT exposed** — Express listens on localhost; nginx proxies to it.

## 2. Server bootstrap (SSH in, run once)

```bash
# Node 24 + tools
curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -
sudo apt-get install -y nodejs nginx git
sudo npm i -g pm2

# App
git clone https://github.com/Nel-droid/CDI-Practice.git ~/cdi-practice
cd ~/cdi-practice
git checkout feat/aws-migration        # until it's merged to main

# Secrets (fill values in your editor; do NOT paste them into chat)
cp deploy/.env.server.example .env
chmod 600 .env
nano .env

# Start the API under PM2
./deploy/deploy-api.sh
pm2 startup    # follow the printed command so it survives reboots
pm2 save
```

## 3. nginx + Cloudflare Origin cert

```bash
sudo mkdir -p /etc/ssl/cloudflare
# Paste the Cloudflare Origin cert + key here (create in Cloudflare > SSL/TLS > Origin Server):
sudo nano /etc/ssl/cloudflare/cdi-origin.pem
sudo nano /etc/ssl/cloudflare/cdi-origin.key
sudo chmod 600 /etc/ssl/cloudflare/cdi-origin.key

sudo cp deploy/nginx-cdi.conf /etc/nginx/sites-available/cdi
sudo ln -s /etc/nginx/sites-available/cdi /etc/nginx/sites-enabled/cdi
sudo rm -f /etc/nginx/sites-enabled/default
sudo nginx -t && sudo systemctl reload nginx
```

## 4. S3 static site (you create it)

- Bucket: **`cdi-practice-frontend`** (us-east-1), **Static website hosting = On**,
  index document `index.html` (also set error document `index.html` for SPA routing).
- **Block Public Access:** leave "Block public ACLs" on; allow read via a **scoped
  bucket policy** (GetObject only):

```json
{
  "Version": "2012-10-17",
  "Statement": [{
    "Sid": "PublicReadGetObject",
    "Effect": "Allow",
    "Principal": "*",
    "Action": "s3:GetObject",
    "Resource": "arn:aws:s3:::cdi-practice-frontend/*"
  }]
}
```

- Publish the build: locally, with `VITE_*` build vars set and AWS CLI configured:
  ```bash
  ./deploy/deploy-web.sh
  ```

## 5. Cloudflare (you configure)

- DNS: `cdi.example.com` → **A record to the EC2 Elastic IP**, proxied (orange cloud).
- SSL/TLS mode: **Full (strict)** (matches the Origin cert on nginx).
- **Path routing (Option A):** default origin = the S3 static site; add an **Origin
  Rule** so requests to `/api/*` (and `/health`) go to the EC2 origin instead.
  (Alternatively route the whole hostname to EC2 and let nginx 404 non-/api — but the
  S3-default + /api-override rule is the clean same-origin setup.)

## 6. Cutover checklist (when going live on the real domain)

- Update **Supabase** Auth redirect allowlist + Site URL, and **Google** OAuth
  origins, to the new domain.
- Swap `cdi.example.com` for the real domain in `nginx-cdi.conf`, the cert, and DNS.

## Routine deploys

- **API:** SSH in → `./deploy/deploy-api.sh` (git pull + `npm ci --omit=dev` + PM2 reload).
- **Frontend:** locally → `./deploy/deploy-web.sh` (Vite build + `aws s3 sync`).
