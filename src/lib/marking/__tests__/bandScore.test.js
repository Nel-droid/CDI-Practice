import { describe, it, expect } from 'vitest'
import { rawToBand, roundToHalfBand, overallBand } from '../bandScore.js'

// ---------------------------------------------------------------------------
// rawToBand — Listening
// ---------------------------------------------------------------------------
describe('rawToBand — Listening', () => {
  it('returns 0 for a raw score of 0', () => {
    expect(rawToBand(0, 'listening')).toBe(0)
  })
  it('returns 9.0 for a raw score of 40', () => {
    expect(rawToBand(40, 'listening')).toBe(9.0)
  })
  it('returns a band strictly between 0 and 9 for a mid score', () => {
    const band = rawToBand(20, 'listening')
    expect(band).toBeGreaterThan(0)
    expect(band).toBeLessThan(9)
  })
  it('band increases monotonically from 0 to 40', () => {
    let prev = -1
    for (let i = 0; i <= 40; i++) {
      const b = rawToBand(i, 'listening')
      expect(b).toBeGreaterThanOrEqual(prev)
      prev = b
    }
  })
})

// ---------------------------------------------------------------------------
// rawToBand — Academic Reading
// ---------------------------------------------------------------------------
describe('rawToBand — Academic Reading', () => {
  it('returns 0 for a raw score of 0', () => {
    expect(rawToBand(0, 'academic')).toBe(0)
  })
  it('returns 9.0 for a raw score of 40', () => {
    expect(rawToBand(40, 'academic')).toBe(9.0)
  })
  it('also accepts "academic-reading" as the variant name', () => {
    expect(rawToBand(40, 'academic-reading')).toBe(9.0)
  })
  it('returns the same value for "academic" and "academic-reading"', () => {
    for (let i = 0; i <= 40; i++) {
      expect(rawToBand(i, 'academic')).toBe(rawToBand(i, 'academic-reading'))
    }
  })
})

// ---------------------------------------------------------------------------
// rawToBand — General Reading
// ---------------------------------------------------------------------------
describe('rawToBand — General Reading', () => {
  it('returns 0 for a raw score of 0', () => {
    expect(rawToBand(0, 'general')).toBe(0)
  })
  it('returns 9.0 for a raw score of 40', () => {
    expect(rawToBand(40, 'general')).toBe(9.0)
  })
  it('also accepts "general-reading" as the variant name', () => {
    expect(rawToBand(40, 'general-reading')).toBe(9.0)
  })
})

// ---------------------------------------------------------------------------
// rawToBand — edge cases
// ---------------------------------------------------------------------------
describe('rawToBand — edge cases', () => {
  it('throws on an unknown variant', () => {
    expect(() => rawToBand(20, 'writing')).toThrow()
  })
  it('clamps raw score above 40 to 40', () => {
    expect(rawToBand(99, 'listening')).toBe(rawToBand(40, 'listening'))
  })
  it('clamps negative raw score to 0', () => {
    expect(rawToBand(-5, 'listening')).toBe(rawToBand(0, 'listening'))
  })
  it('rounds a fractional raw score to the nearest integer before lookup', () => {
    expect(rawToBand(20.6, 'listening')).toBe(rawToBand(21, 'listening'))
  })
})

// ---------------------------------------------------------------------------
// roundToHalfBand
// ---------------------------------------------------------------------------
describe('roundToHalfBand', () => {
  it('leaves a whole number unchanged', () => {
    expect(roundToHalfBand(6.0)).toBe(6.0)
  })
  it('rounds .25 up to .5', () => {
    expect(roundToHalfBand(6.25)).toBe(6.5)
  })
  it('leaves .5 unchanged', () => {
    expect(roundToHalfBand(6.5)).toBe(6.5)
  })
  it('rounds .75 up to the next whole number', () => {
    expect(roundToHalfBand(6.75)).toBe(7.0)
  })
  it('rounds .24 down to the whole number', () => {
    expect(roundToHalfBand(6.24)).toBe(6.0)
  })
  it('rounds .74 to .5', () => {
    expect(roundToHalfBand(6.74)).toBe(6.5)
  })
  it('rounds .76 up to the next whole number', () => {
    expect(roundToHalfBand(6.76)).toBe(7.0)
  })
})

// ---------------------------------------------------------------------------
// overallBand
// ---------------------------------------------------------------------------
describe('overallBand', () => {
  it('returns 0 for an empty array', () => {
    expect(overallBand([])).toBe(0)
  })
  it('returns the single band unchanged when it is already a half-band value', () => {
    expect(overallBand([7.0])).toBe(7.0)
  })
  it('averages (6.5 + 7.0) / 2 = 6.75 → rounds up to 7.0', () => {
    expect(overallBand([6.5, 7.0])).toBe(7.0)
  })
  it('averages (6.0 + 6.5) / 2 = 6.25 → rounds to 6.5', () => {
    expect(overallBand([6.0, 6.5])).toBe(6.5)
  })
  it('averages (6.0 + 6.5 + 7.0) / 3 = 6.5 → stays 6.5', () => {
    expect(overallBand([6.0, 6.5, 7.0])).toBe(6.5)
  })
  it('handles a single high band', () => {
    expect(overallBand([9.0])).toBe(9.0)
  })
})
