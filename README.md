# CDI IELTS Practice Platform

A public web app where students practise IELTS Reading, Listening, and Writing
under exam-like conditions, then see auto-marked results with explanations.

## Running locally

**Prerequisites:** Node 18+ and Git.

```bash
# 1. Install dependencies
npm install

# 2. Copy the env template and fill in your Supabase credentials
cp .env.example .env
# Edit .env with your real VITE_SUPABASE_URL and VITE_SUPABASE_ANON_KEY

# 3. Start the dev server
npm run dev
# Opens at http://localhost:5173
```

## Building for production

```bash
npm run build
# Output is in /dist — Vercel deploys this automatically on push to main.
```

## Tech stack

- React 18 + Vite
- react-router-dom
- Supabase (auth, database, storage, edge functions)
- Hosted on Vercel
