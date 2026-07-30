// Browser-side helpers that call our own /api endpoints. The Gemini key stays
// on the server; the browser only ever talks to these same-origin routes, and
// only ever with the signed-in user's access token attached.
import { postJsonAuthed } from '../apiFetch'

/**
 * Ask the AI examiner to assess a Writing submission.
 * @returns structured feedback object (see api/_lib/prompts.js).
 */
export function getWritingFeedback({ task, promptText, essay, minWords }) {
  return postJsonAuthed('/api/writing-feedback', { task, promptText, essay, minWords }).then(d => d.feedback)
}

/**
 * Send the conversation to the tutor and get the next reply.
 * @param messages [{ role: 'user'|'assistant', content }]
 * @param context  short human-readable string about where the learner is
 */
export function askTutor({ messages, context }) {
  return postJsonAuthed('/api/tutor', { messages, context }).then(d => d.reply)
}
