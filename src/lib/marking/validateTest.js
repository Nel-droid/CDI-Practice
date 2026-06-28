function isAnswerMissing(q) {
  if (q.answer == null) return true
  if (typeof q.answer === 'string') return q.answer.trim() === ''
  if (Array.isArray(q.answer)) return q.answer.length === 0
  return false
}

/**
 * Validates a published test row and logs console warnings for any structural
 * problems: wrong question count (suppresses band scores) or individual
 * questions missing answer, evidence.quote, or explanation.
 *
 * @param {{ content: object, published: boolean, test_label: string }} testRow
 * @returns {number} total question slots found
 */
export function warnIfMisaligned(testRow) {
  const sections = testRow?.content?.sections ?? []
  const questions = sections
    .flatMap(s => s.groups ?? [])
    .flatMap(g => g.questions ?? [])

  const totalSlots = questions.length

  if (testRow.published && totalSlots !== 40) {
    console.warn(
      `[CDI] Published test "${testRow.test_label}" has ${totalSlots} question slot${totalSlots === 1 ? '' : 's'} — ` +
      `expected 40. Band scores are suppressed until this is corrected.`
    )
  }

  if (testRow.published) {
    const missingAnswer      = questions.filter(isAnswerMissing).map(q => q.number)
    const missingEvidence    = questions.filter(q => !q.evidence?.quote).map(q => q.number)
    const missingExplanation = questions.filter(q => !q.explanation).map(q => q.number)

    if (missingAnswer.length > 0)
      console.warn(`[CDI] Published test "${testRow.test_label}" — missing answer on Q${missingAnswer.join(', Q')}`)
    if (missingEvidence.length > 0)
      console.warn(`[CDI] Published test "${testRow.test_label}" — missing evidence.quote on Q${missingEvidence.join(', Q')}`)
    if (missingExplanation.length > 0)
      console.warn(`[CDI] Published test "${testRow.test_label}" — missing explanation on Q${missingExplanation.join(', Q')}`)
  }

  return totalSlots
}
