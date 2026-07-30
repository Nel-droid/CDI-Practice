import { readJson, sendJson, HttpError } from './_lib/http.js'
import { requireUser } from './_lib/supabase.js'
import { scoreModule } from '../src/lib/marking/index.js'
import { summariseByType } from '../src/lib/analytics/questionTypes.js'

// Grades a Reading/Listening attempt SERVER-SIDE, so the answer key never has to
// reach the browser. The exam page sends the candidate's responses; we load the
// full (answer-bearing) test with the service role, mark it with the same engine
// the client used to use, and record the attempt. Answers are then available to
// the owner only via get_review_content() after submission.
export default async function handler(req, res) {
  if (req.method !== 'POST') return sendJson(res, 405, { error: 'Method not allowed' })

  try {
    const { user, supa } = await requireUser(req)
    const { attemptId, responses } = await readJson(req)

    if (!attemptId || typeof attemptId !== 'string') {
      return sendJson(res, 400, { error: 'Missing attempt id.' })
    }
    const answers = responses && typeof responses === 'object' && !Array.isArray(responses) ? responses : {}

    // Load the attempt and confirm it belongs to this user and isn't already done.
    const { data: attempt, error: aErr } = await supa
      .from('attempts')
      .select('id, user_id, test_id, started_at, submitted_at')
      .eq('id', attemptId)
      .single()
    if (aErr || !attempt) return sendJson(res, 404, { error: 'Attempt not found.' })
    if (attempt.user_id !== user.id) return sendJson(res, 403, { error: 'This attempt is not yours.' })
    if (attempt.submitted_at) return sendJson(res, 200, { ok: true, alreadySubmitted: true })

    // Load the full test (service role bypasses the client-facing revoke).
    const { data: test, error: tErr } = await supa
      .from('tests')
      .select('content')
      .eq('id', attempt.test_id)
      .single()
    if (tErr || !test?.content) return sendJson(res, 404, { error: 'Test not found.' })

    const content = test.content
    const result = scoreModule(content, answers)

    // Trust server time for duration, computed from when the attempt was created.
    const startedMs = attempt.started_at ? new Date(attempt.started_at).getTime() : Date.now()
    const elapsed = Math.max(0, Math.round((Date.now() - startedMs) / 1000))

    const { error: uErr } = await supa
      .from('attempts')
      .update({
        submitted_at: new Date().toISOString(),
        duration_seconds: elapsed,
        raw_score: result.raw,
        band: result.band,
        responses: answers,
        marked: {
          raw: result.raw,
          total: result.total,
          band: result.band,
          perQuestion: result.perQuestion,
          byType: summariseByType(content, result.perQuestion),
        },
      })
      .eq('id', attemptId)
      .is('submitted_at', null) // guard against a concurrent double-submit
    if (uErr) return sendJson(res, 500, { error: 'Could not record your result. Please try again.' })

    return sendJson(res, 200, { ok: true })
  } catch (err) {
    const status = err instanceof HttpError ? err.status : 500
    return sendJson(res, status, { error: err.message || 'Something went wrong.' })
  }
}
