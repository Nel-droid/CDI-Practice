import { sendJson, HttpError } from './_lib/http.js'
import { requireUser } from './_lib/supabase.js'
import { getUsageSummary } from './_lib/entitlements.js'

// GET /api/usage — the signed-in user's tier + remaining AI quotas, for the UI.
export default async function handler(req, res) {
  if (req.method !== 'GET') return sendJson(res, 405, { error: 'Method not allowed' })

  try {
    const { user, supa } = await requireUser(req)
    const summary = await getUsageSummary(supa, user.id)
    return sendJson(res, 200, summary)
  } catch (err) {
    const status = err instanceof HttpError ? err.status : 500
    return sendJson(res, status, { error: err.message || 'Something went wrong.' })
  }
}
