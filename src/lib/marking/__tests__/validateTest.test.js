import { describe, it, expect, vi, afterEach } from 'vitest'
import { warnIfMisaligned } from '../validateTest.js'

function makeQuestion(overrides = {}) {
  return {
    number: 1,
    answer: 'TRUE',
    explanation: 'Some explanation.',
    evidence: { quote: 'Some verbatim quote.' },
    ...overrides,
  }
}

function makeTestRow({ questionCount = 40, published = true, questions = null } = {}) {
  const qs = questions ?? Array.from({ length: questionCount }, (_, i) => makeQuestion({ number: i + 1 }))
  return {
    test_label: 'Test 1',
    published,
    content: {
      sections: [{ id: 'p1', groups: [{ questions: qs }] }],
    },
  }
}

afterEach(() => { vi.restoreAllMocks() })

// ── Count checks ──────────────────────────────────────────────────────────────

describe('warnIfMisaligned — slot count', () => {
  it('returns the total number of question slots', () => {
    expect(warnIfMisaligned(makeTestRow({ questionCount: 40 }))).toBe(40)
  })

  it('returns 0 for an empty test', () => {
    const row = { test_label: 'T', published: false, content: { sections: [] } }
    expect(warnIfMisaligned(row)).toBe(0)
  })

  it('no warning when published test has exactly 40 questions and all fields present', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    warnIfMisaligned(makeTestRow({ questionCount: 40 }))
    expect(warn).not.toHaveBeenCalled()
  })

  it('warns when published test has fewer than 40 slots', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    warnIfMisaligned(makeTestRow({ questionCount: 38 }))
    expect(warn).toHaveBeenCalledWith(expect.stringContaining('38 question slots'))
  })

  it('warns when published test has more than 40 slots', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    warnIfMisaligned(makeTestRow({ questionCount: 41 }))
    expect(warn).toHaveBeenCalledWith(expect.stringContaining('41 question slots'))
  })

  it('does not warn about slot count for an unpublished test', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    warnIfMisaligned(makeTestRow({ questionCount: 38, published: false }))
    expect(warn).not.toHaveBeenCalled()
  })
})

// ── Per-question field checks ─────────────────────────────────────────────────

describe('warnIfMisaligned — missing answer', () => {
  it('warns when a question has no answer field', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = Array.from({ length: 40 }, (_, i) =>
      makeQuestion({ number: i + 1, ...(i === 4 ? { answer: undefined } : {}) })
    )
    warnIfMisaligned(makeTestRow({ questions: qs }))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing answer.*Q5/))
  })

  it('warns when a question has an empty string answer', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = Array.from({ length: 40 }, (_, i) =>
      makeQuestion({ number: i + 1, ...(i === 9 ? { answer: '' } : {}) })
    )
    warnIfMisaligned(makeTestRow({ questions: qs }))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing answer.*Q10/))
  })

  it('warns when a question has an empty array answer', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = Array.from({ length: 40 }, (_, i) =>
      makeQuestion({ number: i + 1, ...(i === 2 ? { answer: [] } : {}) })
    )
    warnIfMisaligned(makeTestRow({ questions: qs }))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing answer.*Q3/))
  })
})

describe('warnIfMisaligned — missing evidence.quote', () => {
  it('warns when a question has no evidence field', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = Array.from({ length: 40 }, (_, i) =>
      makeQuestion({ number: i + 1, ...(i === 15 ? { evidence: undefined } : {}) })
    )
    warnIfMisaligned(makeTestRow({ questions: qs }))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing evidence\.quote.*Q16/))
  })

  it('warns when evidence exists but quote is empty', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = Array.from({ length: 40 }, (_, i) =>
      makeQuestion({ number: i + 1, ...(i === 7 ? { evidence: { quote: '' } } : {}) })
    )
    warnIfMisaligned(makeTestRow({ questions: qs }))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing evidence\.quote.*Q8/))
  })
})

describe('warnIfMisaligned — missing explanation', () => {
  it('warns when a question has no explanation field', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = Array.from({ length: 40 }, (_, i) =>
      makeQuestion({ number: i + 1, ...(i === 39 ? { explanation: undefined } : {}) })
    )
    warnIfMisaligned(makeTestRow({ questions: qs }))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing explanation.*Q40/))
  })

  it('warns when explanation is an empty string', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = Array.from({ length: 40 }, (_, i) =>
      makeQuestion({ number: i + 1, ...(i === 0 ? { explanation: '' } : {}) })
    )
    warnIfMisaligned(makeTestRow({ questions: qs }))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing explanation.*Q1/))
  })
})

describe('warnIfMisaligned — multiple missing fields', () => {
  it('fires one warning per field type, listing all affected question numbers', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = Array.from({ length: 40 }, (_, i) => {
      if (i === 0) return makeQuestion({ number: 1, answer: undefined })
      if (i === 1) return makeQuestion({ number: 2, evidence: undefined })
      if (i === 2) return makeQuestion({ number: 3, explanation: undefined })
      return makeQuestion({ number: i + 1 })
    })
    warnIfMisaligned(makeTestRow({ questions: qs }))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing answer.*Q1/))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing evidence\.quote.*Q2/))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/missing explanation.*Q3/))
  })

  it('does not warn about field content for unpublished tests', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const qs = [makeQuestion({ number: 1, answer: undefined, evidence: undefined, explanation: undefined })]
    const row = { test_label: 'T', published: false, content: { sections: [{ id: 'p1', groups: [{ questions: qs }] }] } }
    warnIfMisaligned(row)
    expect(warn).not.toHaveBeenCalled()
  })
})

// ── Diagram/map groups missing image ───────────────────────────────────────────

function makeRow(groups, published = true) {
  return { test_label: 'Test 1', published, content: { sections: [{ id: 's1', groups }] } }
}

describe('warnIfMisaligned — diagram group missing mapImage/diagramImage', () => {
  it('warns when a "Label the map" group has no mapImage or diagramImage', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const group = {
      instructions: 'Label the map below. Write the correct letter, A–I, next to Questions 11–14.',
      questions: [makeQuestion({ number: 11 }), makeQuestion({ number: 12 })],
    }
    warnIfMisaligned(makeRow([group]))
    expect(warn).toHaveBeenCalledWith(expect.stringMatching(/map\/plan\/diagram.*Q11-12/))
  })

  it('does not warn when mapImage is set', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const group = {
      instructions: 'Label the map below.',
      mapImage: 'Part 2 Map.png',
      questions: [makeQuestion({ number: 11 })],
    }
    warnIfMisaligned(makeRow([group]))
    expect(warn).not.toHaveBeenCalledWith(expect.stringMatching(/map\/plan\/diagram/))
  })

  it('does not warn when diagramImage is set', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const group = {
      instructions: 'Label the plan below.',
      diagramImage: 'floor-plan.png',
      questions: [makeQuestion({ number: 1 })],
    }
    warnIfMisaligned(makeRow([group]))
    expect(warn).not.toHaveBeenCalledWith(expect.stringMatching(/map\/plan\/diagram/))
  })

  it('does not warn for groups with unrelated instructions', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const group = {
      instructions: 'Choose the correct letter, A, B or C.',
      questions: [makeQuestion({ number: 1 })],
    }
    warnIfMisaligned(makeRow([group]))
    expect(warn).not.toHaveBeenCalledWith(expect.stringMatching(/map\/plan\/diagram/))
  })

  it('does not warn for diagram groups on unpublished tests', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {})
    const group = {
      instructions: 'Label the diagram below.',
      questions: [makeQuestion({ number: 1 })],
    }
    warnIfMisaligned(makeRow([group], false))
    expect(warn).not.toHaveBeenCalled()
  })
})
