/**
 * Normalise a response or answer-key string for comparison.
 *
 * Order of operations matters:
 *   1. Trim leading/trailing whitespace.
 *   2. Lowercase.
 *   3. Replace every hyphen with a space (Rule 8: hyphen = space).
 *   4. Collapse runs of whitespace to a single space.
 *   5. Trim again (hyphen replacement may create leading/trailing spaces).
 */
export function normalise(str) {
  if (typeof str !== 'string') return ''
  return str
    .trim()
    .toLowerCase()
    .replace(/-/g, ' ')
    .replace(/\s+/g, ' ')
    .trim()
}

/**
 * Count words in the RAW (un-normalised, trimmed) string.
 * Used for word-limit enforcement (Rule 3).
 * Hyphenated compounds ("well-known") count as one word.
 */
export function countWords(str) {
  const trimmed = str.trim()
  if (!trimmed) return 0
  return trimmed.split(/\s+/).length
}
