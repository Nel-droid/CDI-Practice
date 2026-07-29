/**
 * Question-type labelling and per-type scoring.
 *
 * The stored `marked.perQuestion` records only whether each question was right.
 * To tell a candidate *which kinds of question* they lose marks on, we need the
 * question's type, which lives on its group in the test content. This module
 * pairs the two at submit time so the dashboard never has to re-fetch whole
 * tests to explain a result.
 */

/**
 * Canonical, candidate-facing name for a question group.
 *
 * The stored `type` is coarse — several very different IELTS task types are all
 * stored as `matching` — so where the type is ambiguous we read the group's
 * instructions, which state the task in the exam's own words.
 *
 * @param {{type: string, instructions?: string, wordBank?: unknown, summaryText?: string, formContent?: unknown}} group
 * @returns {string} display label, e.g. "Matching headings"
 */
export function questionTypeLabel(group) {
  const type = group?.type ?? ''
  const instr = (group?.instructions ?? '').toLowerCase()

  switch (type) {
    case 'true_false_notgiven': return 'True / False / Not Given'
    case 'yes_no_notgiven':     return 'Yes / No / Not Given'
    case 'multiple_choice':     return 'Multiple choice'
    case 'multiple_choice_multi':
    case 'choose_two':          return 'Choose TWO letters'
    case 'short_answer':        return 'Short answer'
    case 'matching': {
      if (instr.includes('heading')) return 'Matching headings'
      if (instr.includes('which paragraph') || instr.includes('which section')) {
        return 'Matching information'
      }
      if (instr.includes('ending')) return 'Sentence endings'
      return 'Matching features'
    }
    case 'completion': {
      if (Array.isArray(group?.wordBank) && group.wordBank.length > 0) {
        return 'Summary (word bank)'
      }
      if (group?.summaryText) return 'Summary completion'
      if (instr.includes('table'))      return 'Table completion'
      if (instr.includes('flow-chart')) return 'Flow-chart completion'
      if (instr.includes('diagram'))    return 'Diagram labelling'
      if (instr.includes('sentence'))   return 'Sentence completion'
      if (instr.includes('note'))       return 'Note completion'
      return 'Completion'
    }
    default:
      return 'Other'
  }
}

/**
 * Map every question number in a test to its type label.
 *
 * @param {{sections?: Array}} content - test content JSON
 * @returns {Map<number, string>}
 */
export function buildTypeIndex(content) {
  const index = new Map()
  for (const section of content?.sections ?? []) {
    for (const group of section?.groups ?? []) {
      const label = questionTypeLabel(group)
      for (const q of group?.questions ?? []) {
        if (q?.number != null) index.set(q.number, label)
      }
    }
  }
  return index
}

/**
 * Summarise a marked result by question type.
 *
 * Stored alongside the attempt so the dashboard can show which task types cost
 * a candidate marks without re-reading the test content.
 *
 * @param {{sections?: Array}} content - test content JSON
 * @param {Array<{number: number, correct: boolean}>} perQuestion
 * @returns {Array<{type: string, correct: number, total: number}>} sorted by type name
 */
export function summariseByType(content, perQuestion) {
  const index = buildTypeIndex(content)
  const tally = new Map()

  for (const entry of perQuestion ?? []) {
    const type = index.get(entry?.number) ?? 'Other'
    const row = tally.get(type) ?? { type, correct: 0, total: 0 }
    row.total += 1
    if (entry?.correct) row.correct += 1
    tally.set(type, row)
  }

  return [...tally.values()].sort((a, b) => a.type.localeCompare(b.type))
}
