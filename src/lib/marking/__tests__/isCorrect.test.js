import { describe, it, expect } from 'vitest'
import { isCorrect, scorePaired } from '../isCorrect.js'

// Shorthand: build a minimal short-answer question
const q = (answer, extra = {}) => ({ answer, type: 'short_answer', ...extra })

// ---------------------------------------------------------------------------
// Rule 1 — Normalisation (trim, lowercase, collapse whitespace)
// ---------------------------------------------------------------------------
describe('Rule 1 — Normalisation', () => {
  it('trims leading whitespace from the response', () => {
    expect(isCorrect(q('cat'), '  cat')).toBe(true)
  })
  it('trims trailing whitespace from the response', () => {
    expect(isCorrect(q('cat'), 'cat  ')).toBe(true)
  })
  it('lowercases the response', () => {
    expect(isCorrect(q('CAT'), 'Cat')).toBe(true)
  })
  it('lowercases the answer key', () => {
    expect(isCorrect(q('BRIDGE'), 'bridge')).toBe(true)
  })
  it('collapses internal whitespace to a single space', () => {
    expect(isCorrect(q('big cat'), 'big  cat')).toBe(true)
  })
  it('rejects a genuinely wrong answer even after normalisation', () => {
    expect(isCorrect(q('cat'), 'dog')).toBe(false)
  })
})

// ---------------------------------------------------------------------------
// Rule 2 — Accepted variants (answer array)
// ---------------------------------------------------------------------------
describe('Rule 2 — Accepted variants', () => {
  it('accepts the first variant in the key array', () => {
    expect(isCorrect(q(['colour', 'color']), 'colour')).toBe(true)
  })
  it('accepts the second variant in the key array', () => {
    expect(isCorrect(q(['colour', 'color']), 'color')).toBe(true)
  })
  it('rejects a value not present in the key array', () => {
    expect(isCorrect(q(['colour', 'color']), 'colouring')).toBe(false)
  })
  it('does NOT auto-correct spelling errors outside the key', () => {
    expect(isCorrect(q(['colour']), 'colouur')).toBe(false)
  })
  it('single string answer is treated as a one-entry key array', () => {
    expect(isCorrect(q('steel'), 'steel')).toBe(true)
  })
})

// ---------------------------------------------------------------------------
// Rule 3 — Word limit
// ---------------------------------------------------------------------------
describe('Rule 3 — Word limit', () => {
  it('accepts a response within the word limit', () => {
    expect(isCorrect(q(['old wooden bridge'], { wordLimit: 3 }), 'old wooden bridge')).toBe(true)
  })
  it('rejects a response that exceeds the word limit even if it contains the right word', () => {
    expect(isCorrect(q(['bridge'], { wordLimit: 1 }), 'old bridge')).toBe(false)
  })
  it('rejects exactly one word over the limit', () => {
    expect(isCorrect(q(['big cat'], { wordLimit: 2 }), 'a big cat')).toBe(false)
  })
  it('accepts a response at exactly the limit', () => {
    expect(isCorrect(q(['big cat'], { wordLimit: 2 }), 'big cat')).toBe(true)
  })
  it('counts hyphenated compounds as one word', () => {
    // "well-known" is one word; wordLimit: 2 allows it plus one more
    expect(isCorrect(q(['well-known fact'], { wordLimit: 2 }), 'well-known fact')).toBe(true)
  })
})

// ---------------------------------------------------------------------------
// Rule 4 — Numbers (no automatic numeric/word conversion)
// ---------------------------------------------------------------------------
describe('Rule 4 — Numbers', () => {
  it('accepts "12" when only "12" is in the key', () => {
    expect(isCorrect(q(['12']), '12')).toBe(true)
  })
  it('rejects "twelve" when only "12" is in the key (no auto-conversion)', () => {
    expect(isCorrect(q(['12']), 'twelve')).toBe(false)
  })
  it('rejects "12" when only "twelve" is in the key', () => {
    expect(isCorrect(q(['twelve']), '12')).toBe(false)
  })
  it('accepts "twelve" when both forms are listed in the key', () => {
    expect(isCorrect(q(['12', 'twelve']), 'twelve')).toBe(true)
  })
  it('accepts "12" when both forms are listed in the key', () => {
    expect(isCorrect(q(['12', 'twelve']), '12')).toBe(true)
  })
})

// ---------------------------------------------------------------------------
// Rule 5 — multiple_choice_multi (order-independent set equality)
// ---------------------------------------------------------------------------
describe('Rule 5 — multiple_choice_multi', () => {
  const mqq = answer => ({ answer, type: 'multiple_choice_multi' })

  it('accepts the response when it matches the key in the same order', () => {
    expect(isCorrect(mqq(['A', 'C']), ['A', 'C'])).toBe(true)
  })
  it('accepts the response when it matches the key in a different order', () => {
    expect(isCorrect(mqq(['A', 'C']), ['C', 'A'])).toBe(true)
  })
  it('rejects if one selected letter is wrong', () => {
    expect(isCorrect(mqq(['A', 'C']), ['A', 'B'])).toBe(false)
  })
  it('rejects if too many options are selected', () => {
    expect(isCorrect(mqq(['A', 'C']), ['A', 'B', 'C'])).toBe(false)
  })
  it('rejects if too few options are selected', () => {
    expect(isCorrect(mqq(['A', 'C']), ['A'])).toBe(false)
  })
  it('is case-insensitive after normalisation', () => {
    expect(isCorrect(mqq(['a', 'c']), ['C', 'A'])).toBe(true)
  })
})

// ---------------------------------------------------------------------------
// Rule 6 — Paired answers ("choose TWO")
// ---------------------------------------------------------------------------
describe('Rule 6 — Paired answers', () => {
  it('awards both marks when two different correct letters are chosen', () => {
    expect(scorePaired(['A', 'C'], ['A', 'C'])).toEqual([true, true])
  })
  it('awards both marks when the correct letters are reversed across slots', () => {
    expect(scorePaired(['A', 'C'], ['C', 'A'])).toEqual([true, true])
  })
  it('awards only one mark when the same correct letter fills both slots (no double-count)', () => {
    expect(scorePaired(['A', 'C'], ['A', 'A'])).toEqual([true, false])
  })
  it('awards zero marks when both slots are wrong', () => {
    expect(scorePaired(['A', 'C'], ['B', 'D'])).toEqual([false, false])
  })
  it('awards one mark when only the first slot is correct', () => {
    expect(scorePaired(['A', 'C'], ['A', 'B'])).toEqual([true, false])
  })
  it('awards one mark when only the second slot is correct', () => {
    expect(scorePaired(['A', 'C'], ['B', 'C'])).toEqual([false, true])
  })
  it('is case-insensitive', () => {
    expect(scorePaired(['a', 'c'], ['C', 'A'])).toEqual([true, true])
  })
  // Seed-data scenario: Q35/Q36 key ["B","C"], student answers A and C → 1 mark
  it('awards one mark for ["A","C"] response against key ["B","C"] (one overlapping letter)', () => {
    expect(scorePaired(['B', 'C'], ['A', 'C'])).toEqual([false, true])
  })
  // Duplicate-correct guard: ["C","C"] against key ["B","C"] must total 1, never 2
  it('awards one mark when both slots give the same correct letter ["C","C"] against key ["B","C"]', () => {
    expect(scorePaired(['B', 'C'], ['C', 'C'])).toEqual([true, false])
  })
})

// ---------------------------------------------------------------------------
// Rule 7 — Choice types (MCQ, T/F/NG, Y/N/NG, matching): exact key match
// ---------------------------------------------------------------------------
describe('Rule 7 — Choice types', () => {
  const cq = (type, answer) => ({ answer, type })

  it('MCQ: accepts the correct option letter', () => {
    expect(isCorrect(cq('multiple_choice', 'B'), 'B')).toBe(true)
  })
  it('MCQ: rejects a wrong option letter', () => {
    expect(isCorrect(cq('multiple_choice', 'B'), 'A')).toBe(false)
  })
  it('True/False/NG: accepts TRUE', () => {
    expect(isCorrect(cq('true_false_notgiven', 'TRUE'), 'TRUE')).toBe(true)
  })
  it('True/False/NG: rejects NOT GIVEN when answer is FALSE', () => {
    expect(isCorrect(cq('true_false_notgiven', 'FALSE'), 'NOT GIVEN')).toBe(false)
  })
  it('True/False/NG: case-insensitive match', () => {
    expect(isCorrect(cq('true_false_notgiven', 'TRUE'), 'true')).toBe(true)
  })
  it('Yes/No/NG: accepts YES', () => {
    expect(isCorrect(cq('yes_no_notgiven', 'YES'), 'YES')).toBe(true)
  })
  it('Yes/No/NG: rejects NO when answer is YES', () => {
    expect(isCorrect(cq('yes_no_notgiven', 'YES'), 'NO')).toBe(false)
  })
  it('Matching: accepts the correct roman numeral', () => {
    expect(isCorrect(cq('matching', 'iv'), 'iv')).toBe(true)
  })
  it('Matching: case-insensitive match on the selected heading', () => {
    expect(isCorrect(cq('matching', 'iv'), 'IV')).toBe(true)
  })
})

// ---------------------------------------------------------------------------
// Rule 8 — Hyphen / space equivalence
// ---------------------------------------------------------------------------
describe('Rule 8 — Hyphen/space equivalence', () => {
  it('treats a hyphen in the key as a space: "well-known" key matches "well known" response', () => {
    expect(isCorrect(q(['well-known']), 'well known')).toBe(true)
  })
  it('treats a hyphen in the response as a space: "well known" key matches "well-known" response', () => {
    expect(isCorrect(q(['well known']), 'well-known')).toBe(true)
  })
  it('still rejects a genuinely wrong hyphenated answer', () => {
    expect(isCorrect(q(['well-known']), 'well-liked')).toBe(false)
  })
  it('handles multiple hyphens in a compound word', () => {
    expect(isCorrect(q(['up-to-date']), 'up to date')).toBe(true)
  })
  it('handles the reverse: hyphenated response against space-separated key', () => {
    expect(isCorrect(q(['up to date']), 'up-to-date')).toBe(true)
  })
})
