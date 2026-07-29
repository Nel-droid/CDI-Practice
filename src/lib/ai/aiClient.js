// Browser-side helpers that call our own /api endpoints. The Gemini key stays
// on the server; the browser only ever talks to these same-origin routes.

async function postJson(url, body) {
  let res
  try {
    res = await fetch(url, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
    })
  } catch {
    throw new Error('Could not reach the server. Check your connection and try again.')
  }

  let data = {}
  try {
    data = await res.json()
  } catch {
    // fall through — some errors return no JSON body
  }

  if (!res.ok) {
    throw new Error(data.error || `Request failed (${res.status}).`)
  }
  return data
}

/**
 * Ask the AI examiner to assess a Writing submission.
 * @returns structured feedback object (see api/_lib/prompts.js).
 */
export function getWritingFeedback({ task, promptText, essay, minWords }) {
  return postJson('/api/writing-feedback', { task, promptText, essay, minWords }).then(d => d.feedback)
}

/**
 * Send the conversation to the tutor and get the next reply.
 * @param messages [{ role: 'user'|'assistant', content }]
 * @param context  short human-readable string about where the learner is
 */
export function askTutor({ messages, context }) {
  return postJson('/api/tutor', { messages, context }).then(d => d.reply)
}
