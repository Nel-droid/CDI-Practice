import { isCorrect, scorePaired } from './isCorrect.js'
import { rawToBand } from './bandScore.js'

/**
 * Score a complete Reading or Listening module.
 *
 * @param {object} moduleData - test JSON with shape:
 *   { skill, variant?, sections: [{ groups: [{ type, paired?, questions: [...] }] }] }
 * @param {object} responses - map of question number → candidate response
 * @returns {{ raw: number, total: number, band: number, perQuestion: object[] }}
 */
export function scoreModule(moduleData, responses) {
  const { skill, variant } = moduleData
  const perQuestion = []
  let raw = 0
  let total = 0

  for (const section of moduleData.sections ?? []) {
    for (const group of section.groups ?? []) {
      const questions = group.questions ?? []

      if (group.paired && questions.length === 2) {
        // Rule 6: paired group — score both slots together to prevent double-counting
        const [q1, q2] = questions
        const r1 = responses?.[q1.number] ?? ''
        const r2 = responses?.[q2.number] ?? ''
        const answerSet = Array.isArray(q1.answer) ? q1.answer : [q1.answer]
        const [ok1, ok2] = scorePaired(answerSet, [r1, r2])

        total += 2
        if (ok1) raw++
        if (ok2) raw++
        perQuestion.push(
          { number: q1.number, correct: ok1, given: responses?.[q1.number] ?? null, answer: q1.answer },
          { number: q2.number, correct: ok2, given: responses?.[q2.number] ?? null, answer: q2.answer },
        )
      } else {
        // All other question types
        for (const question of questions) {
          total++
          const response = responses?.[question.number]
          const correct = response != null ? isCorrect(question, response) : false
          if (correct) raw++
          perQuestion.push({
            number: question.number,
            correct,
            given: response ?? null,
            answer: question.answer,
          })
        }
      }
    }
  }

  const variantKey =
    skill === 'listening' ? 'listening'
    : variant === 'general' ? 'general'
    : 'academic'

  // Only convert raw → band for standard 40-question papers.
  // Non-standard lengths use a different total, so the band table is meaningless.
  const band = total === 40 ? rawToBand(raw, variantKey) : null

  return { raw, total, band, perQuestion }
}
