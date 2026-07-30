import { generate, AiError } from './_lib/gemini.js'
import { writingFeedbackSystem, writingFeedbackUser } from './_lib/prompts.js'
import { readJson, sendJson, HttpError } from './_lib/http.js'
import { requireUser, enforceDailyLimit } from './_lib/supabase.js'

// Tolerant JSON parse: the model may wrap the object in ```json fences or
// prepend reasoning text, so fall back to extracting the outermost {...}.
function parseJsonLoose(text) {
  try { return JSON.parse(text) } catch { /* try harder below */ }

  const fenced = text.match(/```(?:json)?\s*([\s\S]*?)```/i)
  if (fenced) {
    try { return JSON.parse(fenced[1]) } catch { /* fall through */ }
  }

  const start = text.indexOf('{')
  const end = text.lastIndexOf('}')
  if (start !== -1 && end > start) {
    try { return JSON.parse(text.slice(start, end + 1)) } catch { /* give up */ }
  }
  return null
}

// Enforce the IELTS scoring rule regardless of what the model returned:
// each criterion is a whole band (0-9); the overall is their average rounded
// to the nearest half-band.
function normaliseBands(feedback) {
  const toWholeBand = v => Math.max(0, Math.min(9, Math.round(Number(v))))

  const bands = []
  for (const c of feedback.criteria) {
    if (c && Number.isFinite(Number(c.band))) {
      c.band = toWholeBand(c.band)
      bands.push(c.band)
    }
  }
  if (bands.length) {
    const mean = bands.reduce((a, b) => a + b, 0) / bands.length
    feedback.estimatedBand = Math.max(0, Math.min(9, Math.round(mean * 2) / 2))
  }
}

export default async function handler(req, res) {
  if (req.method !== 'POST') return sendJson(res, 405, { error: 'Method not allowed' })

  try {
    const { user, supa } = await requireUser(req)
    await enforceDailyLimit(supa, user.id)

    const { task, promptText, essay, minWords } = await readJson(req)

    if (task !== 'task1' && task !== 'task2') {
      return sendJson(res, 400, { error: 'Unknown task type.' })
    }
    if (!essay || essay.trim().split(/\s+/).filter(Boolean).length < 20) {
      return sendJson(res, 400, { error: 'The response is too short to assess (write at least 20 words).' })
    }

    const text = await generate({
      system: writingFeedbackSystem(task),
      messages: [{ role: 'user', content: writingFeedbackUser({ promptText, essay, minWords }) }],
      json: true,
      temperature: 0.3,
      maxTokens: 4000, // headroom so the model's reasoning can't truncate the JSON
    })

    const feedback = parseJsonLoose(text)
    if (!feedback || !Array.isArray(feedback.criteria)) {
      return sendJson(res, 502, { error: 'Could not read the AI feedback. Please try again.' })
    }

    normaliseBands(feedback)
    return sendJson(res, 200, { feedback })
  } catch (err) {
    const status = err instanceof AiError || err instanceof HttpError ? err.status : 500
    return sendJson(res, status, { error: err.message || 'Something went wrong.' })
  }
}
