import { normalise, countWords } from './normalise.js'

/**
 * Determine whether a candidate response is correct for a given question.
 *
 * Rules applied (spec §5):
 *   1. Normalise both sides (trim, lowercase, collapse whitespace).
 *   2. Accept any entry in the answer array as a valid variant.
 *   3. Enforce word limit — response exceeding `question.wordLimit` is wrong.
 *   4. Numbers: "12" and "twelve" are only interchangeable if both appear in the key.
 *   5. multiple_choice_multi: order-independent set equality.
 *   6. Paired answers: use scorePaired() at the scoreModule level.
 *   7. Choice types (MCQ, T/F/NG, Y/N/NG, matching): exact key match after normalisation.
 *   8. Hyphen = space: handled inside normalise().
 *
 * @param {{ answer: string|string[], type?: string, wordLimit?: number }} question
 * @param {string|string[]} response
 * @returns {boolean}
 */
export function isCorrect(question, response) {
  const { answer, wordLimit, type } = question

  // Rule 5: multiple_choice_multi — order-independent set equality
  if (type === 'multiple_choice_multi') {
    return scoreMultiSelect(answer, response)
  }

  // All other types expect a string response
  const rawResponse = String(response ?? '')

  // Rule 3: word limit — checked on the raw trimmed string before normalisation.
  // Hyphenated compounds count as one word ("well-known" = 1).
  if (wordLimit != null && countWords(rawResponse) > wordLimit) {
    return false
  }

  const normedResponse = normalise(rawResponse)

  // Rules 1, 2, 4, 7, 8: normalise both sides and check against every accepted variant
  const keyArray = Array.isArray(answer) ? answer : [answer]
  return keyArray.some(key => normalise(String(key)) === normedResponse)
}

/**
 * Rule 5 helper: check whether two answer arrays match as unordered sets.
 *
 * @param {string[]} answer - accepted set from the key
 * @param {string[]} response - candidate selections
 * @returns {boolean}
 */
function scoreMultiSelect(answer, response) {
  if (!Array.isArray(answer) || !Array.isArray(response)) return false
  if (answer.length !== response.length) return false
  const normKey = answer.map(k => normalise(String(k))).sort()
  const normRes = response.map(r => normalise(String(r))).sort()
  return normKey.every((k, i) => k === normRes[i])
}

/**
 * Rule 6: Score a paired "choose TWO" group.
 *
 * Both slots share the same answer set. Either correct letter may appear in
 * either slot, but the same letter cannot earn marks in both slots.
 *
 * @param {string[]} answer - the pair's accepted letter set, e.g. ["A", "C"]
 * @param {[string, string]} responses - the two candidate responses
 * @returns {[boolean, boolean]} correct flag per slot
 */
export function scorePaired(answer, responses) {
  if (responses.length !== 2) {
    throw new Error('scorePaired expects exactly 2 responses')
  }
  const keySet = new Set(answer.map(k => normalise(String(k))))
  const [r1, r2] = responses.map(r => normalise(String(r)))
  const distinct = r1 !== r2

  if (!distinct) {
    // Same letter in both slots: only the first slot can earn the mark (no double-counting)
    return [keySet.has(r1), false]
  }
  // Different letters: each slot is marked independently
  return [keySet.has(r1), keySet.has(r2)]
}
