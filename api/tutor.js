import { generate, AiError } from './_lib/gemini.js'
import { tutorSystem } from './_lib/prompts.js'
import { readJson, sendJson } from './_lib/http.js'

const MAX_TURNS = 16       // keep the context small on the free tier
const MAX_CHARS = 4000     // per message guard

export default async function handler(req, res) {
  if (req.method !== 'POST') return sendJson(res, 405, { error: 'Method not allowed' })

  try {
    const { messages, context } = await readJson(req)

    if (!Array.isArray(messages) || messages.length === 0) {
      return sendJson(res, 400, { error: 'No message to answer.' })
    }

    const cleaned = messages
      .filter(m => m && typeof m.content === 'string' && m.content.trim())
      .slice(-MAX_TURNS)
      .map(m => ({
        role: m.role === 'assistant' ? 'assistant' : 'user',
        content: m.content.slice(0, MAX_CHARS),
      }))

    if (cleaned.length === 0 || cleaned[cleaned.length - 1].role !== 'user') {
      return sendJson(res, 400, { error: 'The last message must be from the learner.' })
    }

    const reply = await generate({
      system: tutorSystem(typeof context === 'string' ? context : ''),
      messages: cleaned,
      temperature: 0.6,
      maxTokens: 900,
    })

    return sendJson(res, 200, { reply })
  } catch (err) {
    const status = err instanceof AiError ? err.status : 500
    return sendJson(res, status, { error: err.message || 'Something went wrong.' })
  }
}
