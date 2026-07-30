import { postJsonAuthed } from './apiFetch'

/**
 * Submit a reading/listening attempt for SERVER-SIDE grading. The answer key
 * never reaches the browser — the server marks the responses and records the
 * result on the attempt row. Throws with a friendly message on failure.
 */
export function submitExam({ attemptId, responses }) {
  return postJsonAuthed('/api/grade', { attemptId, responses })
}
