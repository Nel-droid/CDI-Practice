function isAnswerMissing(q) {
  if (q.answer == null) return true
  if (typeof q.answer === 'string') return q.answer.trim() === ''
  if (Array.isArray(q.answer)) return q.answer.length === 0
  return false
}

// Matches instruction phrasing like "Label the map below" / "Label the plan"
// / "Label the diagram below" — the standard IELTS prompt for a group that
// requires a visual asset to be answerable at all.
const DIAGRAM_INSTRUCTION_RE = /\blabel\b[^.]*\b(map|plan|diagram)\b/i

function groupRange(g) {
  const nums = (g.questions ?? []).map(q => q.number).filter(n => n != null)
  if (nums.length === 0) return '?'
  const lo = Math.min(...nums)
  const hi = Math.max(...nums)
  return lo === hi ? `Q${lo}` : `Q${lo}-${hi}`
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
  const groups = sections.flatMap(s => s.groups ?? [])
  const questions = groups.flatMap(g => g.questions ?? [])

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

    const missingDiagramImage = groups
      .filter(g => DIAGRAM_INSTRUCTION_RE.test(g.instructions ?? '') && !g.mapImage && !g.diagramImage)
      .map(groupRange)

    if (missingDiagramImage.length > 0)
      console.warn(`[CDI] Published test "${testRow.test_label}" — group instructions reference a map/plan/diagram but no mapImage/diagramImage is set (${missingDiagramImage.join(', ')})`)
  }

  return totalSlots
}
