import { describe, it, expect } from 'vitest'
import { questionTypeLabel, buildTypeIndex, summariseByType } from '../questionTypes.js'

describe('questionTypeLabel', () => {
  it.each([
    ['true_false_notgiven', 'True / False / Not Given'],
    ['yes_no_notgiven',     'Yes / No / Not Given'],
    ['multiple_choice',     'Multiple choice'],
    ['choose_two',          'Choose TWO letters'],
    ['short_answer',        'Short answer'],
  ])('labels %s', (type, expected) => {
    expect(questionTypeLabel({ type })).toBe(expected)
  })

  // `matching` covers several distinct IELTS tasks, told apart by instructions
  it('distinguishes matching headings from other matching tasks', () => {
    expect(questionTypeLabel({
      type: 'matching',
      instructions: 'Choose the correct heading for each paragraph from the list of headings below.',
    })).toBe('Matching headings')
  })

  it('recognises matching information by its "which paragraph" phrasing', () => {
    expect(questionTypeLabel({
      type: 'matching',
      instructions: 'Which paragraph contains the following information?',
    })).toBe('Matching information')
  })

  it('recognises sentence endings', () => {
    expect(questionTypeLabel({
      type: 'matching',
      instructions: 'Complete each sentence with the correct ending, A–F below.',
    })).toBe('Sentence endings')
  })

  it('falls back to matching features for people/category matching', () => {
    expect(questionTypeLabel({
      type: 'matching',
      instructions: 'Look at the following statements and the list of people below.',
    })).toBe('Matching features')
  })

  // `completion` likewise covers notes/table/summary/etc.
  it('detects a word-bank summary from the wordBank field', () => {
    expect(questionTypeLabel({
      type: 'completion',
      instructions: 'Complete the summary using the list of words, A–G, below.',
      wordBank: [{ key: 'A', text: 'pressure' }],
    })).toBe('Summary (word bank)')
  })

  it('detects a plain summary from summaryText', () => {
    expect(questionTypeLabel({
      type: 'completion',
      instructions: 'Complete the summary below.',
      summaryText: 'Some {31} text',
    })).toBe('Summary completion')
  })

  it.each([
    ['Complete the table below.',      'Table completion'],
    ['Complete the flow-chart below.', 'Flow-chart completion'],
    ['Complete the notes below.',      'Note completion'],
    ['Complete the sentences below.',  'Sentence completion'],
  ])('labels "%s" as %s', (instructions, expected) => {
    expect(questionTypeLabel({ type: 'completion', instructions })).toBe(expected)
  })

  it('returns Other for an unknown type', () => {
    expect(questionTypeLabel({ type: 'wat' })).toBe('Other')
  })

  it('tolerates a missing group', () => {
    expect(questionTypeLabel(undefined)).toBe('Other')
  })
})

describe('buildTypeIndex', () => {
  it('maps every question number to its group type', () => {
    const content = {
      sections: [{
        groups: [
          { type: 'true_false_notgiven', questions: [{ number: 1 }, { number: 2 }] },
          { type: 'multiple_choice',     questions: [{ number: 3 }] },
        ],
      }],
    }
    const index = buildTypeIndex(content)
    expect(index.get(1)).toBe('True / False / Not Given')
    expect(index.get(2)).toBe('True / False / Not Given')
    expect(index.get(3)).toBe('Multiple choice')
  })

  it('returns an empty index for empty content', () => {
    expect(buildTypeIndex({}).size).toBe(0)
    expect(buildTypeIndex(null).size).toBe(0)
  })
})

describe('summariseByType', () => {
  const content = {
    sections: [{
      groups: [
        { type: 'true_false_notgiven', questions: [{ number: 1 }, { number: 2 }] },
        { type: 'multiple_choice',     questions: [{ number: 3 }] },
      ],
    }],
  }

  it('counts correct and total per type', () => {
    const perQuestion = [
      { number: 1, correct: true },
      { number: 2, correct: false },
      { number: 3, correct: true },
    ]
    expect(summariseByType(content, perQuestion)).toEqual([
      { type: 'Multiple choice', correct: 1, total: 1 },
      { type: 'True / False / Not Given', correct: 1, total: 2 },
    ])
  })

  it('buckets questions absent from the content as Other', () => {
    const result = summariseByType(content, [{ number: 99, correct: true }])
    expect(result).toEqual([{ type: 'Other', correct: 1, total: 1 }])
  })

  it('returns an empty array when nothing was marked', () => {
    expect(summariseByType(content, [])).toEqual([])
    expect(summariseByType(content, null)).toEqual([])
  })
})
