import { defineConfig, loadEnv } from 'vite'
import react from '@vitejs/plugin-react'

// Serves the /api/*.js serverless functions during `npm run dev` so the AI
// endpoints work locally exactly as they do on Vercel — no extra CLI needed.
function devApiPlugin() {
  return {
    name: 'dev-api',
    configureServer(server) {
      server.middlewares.use(async (req, res, next) => {
        if (!req.url || !req.url.startsWith('/api/')) return next()
        const route = req.url.split('?')[0].replace(/^\/api\//, '').replace(/\/+$/, '')
        if (!route || route.includes('..')) return next()
        try {
          const mod = await server.ssrLoadModule(`/api/${route}.js`)
          await mod.default(req, res)
        } catch (err) {
          res.statusCode = 500
          res.setHeader('Content-Type', 'application/json')
          res.end(JSON.stringify({ error: err?.message || 'Dev API error' }))
        }
      })
    },
  }
}

export default defineConfig(({ mode }) => {
  // Load every var from .env (not just VITE_*) and expose the server-side ones
  // to the dev API handlers via process.env.
  const env = loadEnv(mode, process.cwd(), '')
  process.env.GEMINI_API_KEY = process.env.GEMINI_API_KEY || env.GEMINI_API_KEY || ''
  process.env.GEMINI_MODEL = process.env.GEMINI_MODEL || env.GEMINI_MODEL || ''
  // Server-side Supabase creds for the dev /api handlers (auth + grading).
  process.env.SUPABASE_SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY || env.SUPABASE_SERVICE_ROLE_KEY || ''
  process.env.SUPABASE_URL = process.env.SUPABASE_URL || env.SUPABASE_URL || env.VITE_SUPABASE_URL || ''

  return {
    plugins: [react(), devApiPlugin()],
    server: {
      allowedHosts: ['cranial-shack-unsliced.ngrok-free.dev'],
    },
    test: {
      environment: 'node',
      include: ['src/**/*.test.js', 'src/**/*.test.jsx'],
    },
  }
})