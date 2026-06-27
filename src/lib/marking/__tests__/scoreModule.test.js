import { describe, it, expect } from 'vitest'
import { scoreModule } from '../scoreModule.js'

const SAMPLE_MODULE = {
  skill: 'reading',
  variant: 'academic',
  sections: [
    {
      id: 'p1',
      groups: [
        {
          type: 'multiple_choice',
          questions: [
            { number: 1, answer: 'B', type: 'multiple_choice' },
            { number: 2, answer: 'A', type: 'multiple_choice' },
          ],
        },
        {
          type: 'short_answer',
          questions: [
            { number: 3, answer: ['steel', 'iron'], type: 'short_answer', wordLimit: 1 },
            { number: 4, answer: ['bridge'], type: 'short_answer' },
          ],
        },
      ],
    },
  ],
}

// ---------------------------------------------------------------------------
// Basic scoring
// ---------------------------------------------------------------------------
describe('scoreModule — basic scoring', () => {
  it('scores a fully correct response set as raw=4, total=4', () => {
    const result = scoreModule(SAMPLE_MODULE, { 1: 'B', 2: 'A', 3: 'steel', 4: 'bridge' })
    expect(result.raw).toBe(4)
    expect(result.total).toBe(4)
  })

  it('scores a partially correct response set correctly', () => {
    const result = scoreModule(SAMPLE_MODULE, { 1: 'B', 2: 'C', 3: 'iron', 4: 'tunnel' })
    expect(result.raw).toBe(2) // Q1 and Q3 only
    expect(result.total).toBe(4)
  })

  it('returns a valid numeric band', () => {
    const result = scoreModule(SAMPLE_MODULE, { 1: 'B', 2: 'A', 3: 'steel', 4: 'bridge' })
    expect(Number.isFinite(result.band)).toBe(true)
    expect(result.band).toBeGreaterThan(0)
  })

  it('returns a band of 0 when all answers are wrong', () => {
    const result = scoreModule(SAMPLE_MODULE, { 1: 'X', 2: 'X', 3: 'X', 4: 'X' })
    expect(result.band).toBe(0)
  })
})

// ---------------------------------------------------------------------------
// perQuestion detail
// ---------------------------------------------------------------------------
describe('scoreModule — perQuestion', () => {
  it('sets correct=true for a right answer and correct=false for a wrong one', () => {
    const result = scoreModule(SAMPLE_MODULE, { 1: 'B', 2: 'C', 3: 'steel', 4: 'bridge' })
    const q1 = result.perQuestion.find(p => p.number === 1)
    const q2 = result.perQuestion.find(p => p.number === 2)
    expect(q1.correct).toBe(true)
    expect(q2.correct).toBe(false)
  })

  it('marks unanswered questions as correct=false and given=null', () => {
    const result = scoreModule(SAMPLE_MODULE, { 1: 'B' })
    const q2 = result.perQuestion.find(p => p.number === 2)
    expect(q2.correct).toBe(false)
    expect(q2.given).toBeNull()
  })

  it('includes the answer key in every perQuestion entry', () => {
    const result = scoreModule(SAMPLE_MODULE, {})
    expect(result.perQuestion.every(p => p.answer !== undefined)).toBe(true)
  })
})

// ---------------------------------------------------------------------------
// Word-limit interaction
// ---------------------------------------------------------------------------
describe('scoreModule — word limit (Rule 3)', () => {
  it('marks Q3 wrong when the response exceeds its 1-word limit', () => {
    const result = scoreModule(SAMPLE_MODULE, {
      1: 'B', 2: 'A', 3: 'lots of steel', 4: 'bridge',
    })
    const q3 = result.perQuestion.find(p => p.number === 3)
    expect(q3.correct).toBe(false)
    expect(result.raw).toBe(3) // Q1, Q2, Q4 correct; Q3 fails word limit
  })
})

// ---------------------------------------------------------------------------
// Paired answers (Rule 6)
// ---------------------------------------------------------------------------
const PAIRED_MODULE = {
  skill: 'reading',
  variant: 'academic',
  sections: [{
    id: 'p1',
    groups: [{
      type: 'multiple_choice',
      paired: true,
      questions: [
        { number: 6, answer: ['A', 'C'], type: 'multiple_choice' },
        { number: 7, answer: ['A', 'C'], type: 'multiple_choice' },
      ],
    }],
  }],
}

describe('scoreModule — paired answers (Rule 6)', () => {
  it('awards both marks when two different correct letters are chosen', () => {
    const result = scoreModule(PAIRED_MODULE, { 6: 'A', 7: 'C' })
    expect(result.raw).toBe(2)
  })

  it('awards both marks when correct letters are given in reverse order', () => {
    const result = scoreModule(PAIRED_MODULE, { 6: 'C', 7: 'A' })
    expect(result.raw).toBe(2)
  })

  it('awards only one mark when the same correct letter fills both slots', () => {
    const result = scoreModule(PAIRED_MODULE, { 6: 'A', 7: 'A' })
    expect(result.raw).toBe(1)
  })

  it('awards zero marks when both slots are wrong', () => {
    const result = scoreModule(PAIRED_MODULE, { 6: 'B', 7: 'D' })
    expect(result.raw).toBe(0)
  })

  it('counts total questions correctly for a paired group', () => {
    const result = scoreModule(PAIRED_MODULE, { 6: 'A', 7: 'C' })
    expect(result.total).toBe(2)
  })
})
