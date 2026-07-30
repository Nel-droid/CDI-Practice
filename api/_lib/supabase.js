import { createClient } from '@supabase/supabase-js'
import { HttpError } from './http.js'

// Server-side Supabase client using the SERVICE ROLE key. This never reaches the
// browser (no VITE_ prefix) and bypasses RLS, so every function that uses it MUST
// authorise the caller itself (see requireUser) before trusting a user id.
const SUPABASE_URL = process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY

let cached = null
export function admin() {
  if (!SUPABASE_URL || !SERVICE_KEY) {
    throw new HttpError('Server auth is not configured (missing Supabase service credentials).', 503)
  }
  if (!cached) {
    cached = createClient(SUPABASE_URL, SERVICE_KEY, {
      auth: { persistSession: false, autoRefreshToken: false },
    })
  }
  return cached
}

function bearerToken(req) {
  const header = req.headers?.authorization || req.headers?.Authorization || ''
  return header.startsWith('Bearer ') ? header.slice(7).trim() : null
}

/**
 * Require a valid Supabase session. Reads the `Authorization: Bearer <token>`
 * header, verifies it server-side, and returns the authenticated user plus the
 * admin client. Throws HttpError(401) when the token is missing or invalid.
 */
export async function requireUser(req) {
  const token = bearerToken(req)
  if (!token) throw new HttpError('Sign in to use this feature.', 401)

  const supa = admin()
  const { data, error } = await supa.auth.getUser(token)
  if (error || !data?.user) throw new HttpError('Your session has expired — please sign in again.', 401)

  return { user: data.user, supa }
}

/**
 * Soft per-user daily cap. Throws HttpError(429) when the user is over the
 * limit; fails OPEN on any storage error so a counter problem never blocks a
 * legitimate user. Requires the api_usage table (supabase/phase13-secure-answers.sql).
 */
export async function enforceDailyLimit(supa, userId, limit = 120) {
  try {
    const day = new Date().toISOString().slice(0, 10)
    const { data } = await supa
      .from('api_usage')
      .select('count')
      .eq('user_id', userId)
      .eq('day', day)
      .maybeSingle()

    const used = data?.count ?? 0
    if (used >= limit) {
      throw new HttpError('You have reached today’s usage limit. Please try again tomorrow.', 429)
    }
    await supa
      .from('api_usage')
      .upsert({ user_id: userId, day, count: used + 1 }, { onConflict: 'user_id,day' })
  } catch (err) {
    if (err instanceof HttpError) throw err // real 429 — propagate
    // otherwise fail open (table missing, transient error, etc.)
  }
}
