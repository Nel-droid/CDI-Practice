import { supabase } from './supabase'

/**
 * POST JSON to one of our /api routes with the current Supabase session's
 * access token attached as `Authorization: Bearer <token>`. The routes verify
 * this server-side, so unauthenticated calls are rejected with 401.
 */
export async function postJsonAuthed(url, body) {
  const { data } = await supabase.auth.getSession()
  const token = data?.session?.access_token

  const headers = { 'Content-Type': 'application/json' }
  if (token) headers.Authorization = `Bearer ${token}`

  let res
  try {
    res = await fetch(url, { method: 'POST', headers, body: JSON.stringify(body) })
  } catch {
    throw new Error('Could not reach the server. Check your connection and try again.')
  }

  let data2 = {}
  try {
    data2 = await res.json()
  } catch {
    // some errors return no JSON body
  }

  if (!res.ok) {
    throw new Error(data2.error || `Request failed (${res.status}).`)
  }
  return data2
}

/** GET one of our /api routes with the Supabase access token attached. */
export async function getJsonAuthed(url) {
  const { data } = await supabase.auth.getSession()
  const token = data?.session?.access_token

  const headers = {}
  if (token) headers.Authorization = `Bearer ${token}`

  let res
  try {
    res = await fetch(url, { headers })
  } catch {
    throw new Error('Could not reach the server. Check your connection and try again.')
  }

  let body = {}
  try { body = await res.json() } catch { /* no JSON body */ }

  if (!res.ok) throw new Error(body.error || `Request failed (${res.status}).`)
  return body
}
