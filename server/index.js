// Persistent Express server for CDI Practice — the AWS/EC2 replacement for the
// Vercel serverless functions. It does NOT reimplement any logic: it mounts the
// exact same handlers from /api/*.js at their existing routes, so business logic,
// environment-variable usage, and the Supabase bearer-token auth are unchanged.
//
// nginx (Option A) proxies /api/* here; S3 serves the static frontend. This
// server is therefore API-only.
import 'dotenv/config' // loads a local .env if present; harmless when env comes from PM2/systemd
import express from 'express'

import grade from '../api/grade.js'
import tutor from '../api/tutor.js'
import writingFeedback from '../api/writing-feedback.js'
import usage from '../api/usage.js'

const app = express()
app.disable('x-powered-by')
app.set('trust proxy', true) // behind nginx + Cloudflare

// IMPORTANT: no body-parsing middleware. Each handler reads the raw request
// stream itself (readJson in api/_lib/http.js), exactly as it did on Vercel and
// under the Vite dev server.

// Adapt a Node (req,res) serverless handler into an Express route, with a
// last-resort error guard so a throw can't hang the connection.
const mount = handler => (req, res) =>
  Promise.resolve(handler(req, res)).catch(err => {
    if (res.headersSent) return
    res.statusCode = 500
    res.setHeader('Content-Type', 'application/json')
    res.end(JSON.stringify({ error: err?.message || 'Server error' }))
  })

// Health check for nginx / load balancers / uptime monitoring.
app.get('/health', (_req, res) => res.json({ ok: true, service: 'cdi-api' }))

// The five endpoints, at the same paths the frontend already calls.
app.all('/api/grade', mount(grade))
app.all('/api/tutor', mount(tutor))
app.all('/api/writing-feedback', mount(writingFeedback))
app.all('/api/usage', mount(usage))

// Anything else under /api is a real 404 (not an SPA fallback — S3 serves the app).
app.use('/api', (_req, res) => {
  res.statusCode = 404
  res.setHeader('Content-Type', 'application/json')
  res.end(JSON.stringify({ error: 'Not found' }))
})

const port = Number(process.env.PORT) || 8080
app.listen(port, () => console.log(`CDI API listening on :${port}`))
