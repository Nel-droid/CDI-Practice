import { describe, it, expect } from 'vitest'
import { isCorrect } from '../isCorrect.js'
import { expandVariants, SPELLING_VARIANTS } from '../spellingVariants.js'

// Shorthand: build a short-answer question, with or without the flag
const q  = (answer, extra = {}) => ({ answer, type: 'short_answer', ...extra })
const qv = (answer, extra = {}) => ({ answer, type: 'short_answer', acceptSpellingVariants: true, ...extra })

// ---------------------------------------------------------------------------
// Core requirement: bi-directional colour / color
// ---------------------------------------------------------------------------
describe('Spelling variants — colour / color (required cases)', () => {
  it('WITH flag: "color" passes a "colour" key', () => {
    expect(isCorrect(qv(['colour']), 'color')).toBe(true)
  })
  it('WITH flag: "colour" passes a "color" key', () => {
    expect(isCorrect(qv(['color']), 'colour')).toBe(true)
  })
  it('WITHOUT flag: "color" does NOT pass a "colour" key', () => {
    expect(isCorrect(q(['colour']), 'color')).toBe(false)
  })
  it('WITHOUT flag: "colour" does NOT pass a "color" key', () => {
    expect(isCorrect(q(['color']), 'colour')).toBe(false)
  })
})

// ---------------------------------------------------------------------------
// Other documented GB/US pairs
// ---------------------------------------------------------------------------
describe('Spelling variants — other documented pairs', () => {
  it('organise / organize (WITH flag)', () => {
    expect(isCorrect(qv(['organise']), 'organize')).toBe(true)
    expect(isCorrect(qv(['organize']), 'organise')).toBe(true)
  })
  it('centre / center (WITH flag)', () => {
    expect(isCorrect(qv(['centre']), 'center')).toBe(true)
    expect(isCorrect(qv(['center']), 'centre')).toBe(true)
  })
  it('metre / meter (WITH flag)', () => {
    expect(isCorrect(qv(['metre']), 'meter')).toBe(true)
  })
  it('programme / program (WITH flag)', () => {
    expect(isCorrect(qv(['programme']), 'program')).toBe(true)
    expect(isCorrect(qv(['program']), 'programme')).toBe(true)
  })
  it('traveller / traveler (WITH flag)', () => {
    expect(isCorrect(qv(['traveller']), 'traveler')).toBe(true)
    expect(isCorrect(qv(['traveler']), 'traveller')).toBe(true)
  })
  it('favour / favor (WITH flag)', () => {
    expect(isCorrect(qv(['favour']), 'favor')).toBe(true)
  })
  it('grey / gray (WITH flag)', () => {
    expect(isCorrect(qv(['grey']), 'gray')).toBe(true)
    expect(isCorrect(qv(['gray']), 'grey')).toBe(true)
  })
  it('defence / defense (WITH flag)', () => {
    expect(isCorrect(qv(['defence']), 'defense')).toBe(true)
  })
  it('aluminium / aluminum (WITH flag)', () => {
    expect(isCorrect(qv(['aluminium']), 'aluminum')).toBe(true)
  })
})

// ---------------------------------------------------------------------------
// Multi-word answers: variant swap applies word-by-word
// ---------------------------------------------------------------------------
describe('Spelling variants — multi-word answers', () => {
  it('swaps a variant word inside a phrase (WITH flag)', () => {
    expect(isCorrect(qv(['town centre']), 'town center')).toBe(true)
  })
  it('swaps multiple variant words in a phrase (WITH flag)', () => {
    expect(isCorrect(qv(['grey colour']), 'gray color')).toBe(true)
  })
  it('exact phrase still passes when flag is off', () => {
    expect(isCorrect(q(['town centre']), 'town centre')).toBe(true)
  })
  it('cross-variant phrase does NOT pass without the flag', () => {
    expect(isCorrect(q(['town centre']), 'town center')).toBe(false)
  })
})

// ---------------------------------------------------------------------------
// The flag must NEVER auto-correct arbitrary misspellings
// ---------------------------------------------------------------------------
describe('Spelling variants — no arbitrary misspellings accepted', () => {
  it('WITH flag: a non-pair misspelling ("colouur") is still rejected', () => {
    expect(isCorrect(qv(['colour']), 'colouur')).toBe(false)
  })
  it('WITH flag: a random wrong word is still rejected', () => {
    expect(isCorrect(qv(['colour']), 'dog')).toBe(false)
  })
  it('WITH flag: a partially similar word that is not in the map is rejected', () => {
    expect(isCorrect(qv(['organise']), 'oragnise')).toBe(false)
  })
})

// ---------------------------------------------------------------------------
// expandVariants unit tests
// ---------------------------------------------------------------------------
describe('expandVariants', () => {
  it('adds the US form when given a GB form', () => {
    const result = expandVariants(['colour'])
    expect(result).toContain('color')
    expect(result).toContain('colour')
  })
  it('adds the GB form when given a US form', () => {
    const result = expandVariants(['color'])
    expect(result).toContain('colour')
  })
  it('returns the original if no variant exists', () => {
    const result = expandVariants(['bridge'])
    expect(result).toEqual(['bridge'])
  })
  it('does not duplicate the original entry', () => {
    const result = expandVariants(['colour'])
    expect(result.filter(x => x === 'colour').length).toBe(1)
  })
  it('handles an array with multiple answers', () => {
    const result = expandVariants(['colour', 'hue'])
    expect(result).toContain('colour')
    expect(result).toContain('color')
    expect(result).toContain('hue')
  })
})

// ---------------------------------------------------------------------------
// SPELLING_VARIANTS map sanity checks
// ---------------------------------------------------------------------------
describe('SPELLING_VARIANTS map', () => {
  it('contains both directions for colour/color', () => {
    expect(SPELLING_VARIANTS['colour']).toBe('color')
    expect(SPELLING_VARIANTS['color']).toBe('colour')
  })
  it('contains both directions for organise/organize', () => {
    expect(SPELLING_VARIANTS['organise']).toBe('organize')
    expect(SPELLING_VARIANTS['organize']).toBe('organise')
  })
  it('all values are lowercase strings', () => {
    for (const [key, val] of Object.entries(SPELLING_VARIANTS)) {
      expect(typeof val).toBe('string')
      expect(val).toBe(val.toLowerCase())
      expect(key).toBe(key.toLowerCase())
    }
  })
  it('every entry has a reverse entry', () => {
    for (const [key, val] of Object.entries(SPELLING_VARIANTS)) {
      expect(SPELLING_VARIANTS[val]).toBe(key)
    }
  })
})
