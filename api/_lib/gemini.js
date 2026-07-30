// Thin wrapper around Google's Gemini API (free tier via Google AI Studio).
// The API key lives ONLY here, server-side — never shipped to the browser.

const API_BASE = 'https://generativelanguage.googleapis.com/v1beta/models'
// On the owner's key (project is under a trial-billing account) gemini-2.0-flash
// returns free-tier limit:0, but "gemini-flash-latest" works (~20 req/day free) —
// enough for dev/demo. AT PUBLIC LAUNCH: enable the paid tier and switch this to
// gemini-2.0-flash (cheapest + non-"thinking"), and add the guardrails (see the
// launch TODO in memory). Override anytime with GEMINI_MODEL.
const DEFAULT_MODEL = 'gemini-flash-latest'

export class AiError extends Error {
  constructor(message, status = 500) {
    super(message)
    this.name = 'AiError'
    this.status = status
  }
}

export function hasGeminiKey() {
  return Boolean(process.env.GEMINI_API_KEY)
}

const sleep = ms => new Promise(r => setTimeout(r, ms))
const MAX_RETRY_WAIT_MS = 8000

// Server-suggested wait from a 429 body (e.g. "retryDelay":"4s"), in ms.
// Returns null when the model doesn't suggest one.
function suggestedRetryMs(bodyText) {
  const match = /"retryDelay":\s*"(\d+(?:\.\d+)?)s"/.exec(bodyText || '')
  return match ? Math.ceil(parseFloat(match[1]) * 1000) : null
}

/**
 * Call Gemini and return the plain text of the first candidate.
 *
 * @param {object}   opts
 * @param {string}   opts.system       system instruction (persona + rules)
 * @param {Array<{role:'user'|'assistant', content:string}>} opts.messages
 * @param {boolean} [opts.json]        ask the model to return application/json
 * @param {number}  [opts.temperature]
 * @param {number}  [opts.maxTokens]
 */
export async function generate({ system, messages, json = false, temperature = 0.5, maxTokens = 1024 }) {
  const key = process.env.GEMINI_API_KEY
  if (!key) {
    throw new AiError('The AI service isn’t configured yet. Add GEMINI_API_KEY on the server.', 503)
  }

  const model = process.env.GEMINI_MODEL || DEFAULT_MODEL
  const body = {
    contents: messages.map(m => ({
      role: m.role === 'assistant' ? 'model' : 'user',
      parts: [{ text: m.content }],
    })),
    generationConfig: {
      temperature,
      maxOutputTokens: maxTokens,
      ...(json ? { responseMimeType: 'application/json' } : {}),
    },
  }
  if (system) body.systemInstruction = { parts: [{ text: system }] }

  const url = `${API_BASE}/${model}:generateContent?key=${key}`
  const request = () => fetch(url, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body),
  })

  // The free tier limits requests-per-minute, so a burst of calls can briefly
  // 429. Gemini tells us how long to wait — honour it and retry a couple of
  // times so short throttles recover invisibly instead of erroring the user.
  const MAX_RETRIES = 2
  let res
  for (let attempt = 0; ; attempt++) {
    try {
      res = await request()
    } catch {
      throw new AiError('Could not reach the AI service. Check your connection and try again.', 502)
    }
    if (res.ok) break

    if (res.status === 429) {
      const suggested = suggestedRetryMs(await res.text().catch(() => ''))
      // Only retry short throttles (per-minute bursts). A long wait means the
      // daily quota is spent — retrying won't help, so fail fast with a hint.
      if (attempt < MAX_RETRIES && suggested != null && suggested <= MAX_RETRY_WAIT_MS) {
        await sleep(Math.max(suggested, 1000))
        continue
      }
      throw new AiError('The AI is busy right now (free-tier limit). Wait a moment and try again.', 429)
    }
    throw new AiError(`The AI service returned an error (${res.status}). Please try again.`, 502)
  }

  const data = await res.json()
  const candidate = data?.candidates?.[0]
  const text = candidate?.content?.parts?.map(p => p.text).filter(Boolean).join('') ?? ''

  if (!text) {
    if (candidate?.finishReason === 'SAFETY') {
      throw new AiError('The AI declined to respond to that. Try rephrasing.', 422)
    }
    throw new AiError('The AI returned an empty response. Please try again.', 502)
  }
  return text.trim()
}
