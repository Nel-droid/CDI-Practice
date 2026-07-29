import { describe, it, expect } from 'vitest'
import {
  bestBands,
  bandTrend,
  bandDelta,
  accuracyByType,
  currentStreak,
  targetProgress,
  projectSkillBand,
  predictedBand,
  readiness,
  roundToHalf,
  completedAttempts,
} from '../progress.js'

// Shorthand: a submitted attempt
const at = (over = {}) => ({
  id: Math.random().toString(36).slice(2),
  skill: 'reading',
  submitted_at: '2026-07-01T10:00:00.000Z',
  band: 6.5,
  ...over,
})

describe('completedAttempts', () => {
  it('excludes attempts that were never submitted', () => {
    const rows = [at(), { ...at(), submitted_at: null }]
    expect(completedAttempts(rows)).toHaveLength(1)
  })

  it('excludes submitted attempts with no band', () => {
    const rows = [at(), { ...at(), band: null }]
    expect(completedAttempts(rows)).toHaveLength(1)
  })

  it('tolerates a null attempt list', () => {
    expect(completedAttempts(null)).toEqual([])
  })
})

describe('bestBands', () => {
  it('returns the highest band for each skill', () => {
    const rows = [
      at({ skill: 'reading', band: 6.0 }),
      at({ skill: 'reading', band: 7.5 }),
      at({ skill: 'listening', band: 6.5 }),
    ]
    expect(bestBands(rows)).toEqual({ reading: 7.5, listening: 6.5 })
  })

  it('returns an empty map when nothing has been completed', () => {
    expect(bestBands([])).toEqual({})
  })
})

describe('bandTrend', () => {
  it('orders each skill series oldest first', () => {
    const rows = [
      at({ band: 7, submitted_at: '2026-07-03T10:00:00.000Z' }),
      at({ band: 5, submitted_at: '2026-07-01T10:00:00.000Z' }),
      at({ band: 6, submitted_at: '2026-07-02T10:00:00.000Z' }),
    ]
    expect(bandTrend(rows).reading.map(p => p.band)).toEqual([5, 6, 7])
  })

  it('keeps skills in separate series', () => {
    const rows = [at({ skill: 'reading' }), at({ skill: 'listening' })]
    const trend = bandTrend(rows)
    expect(Object.keys(trend).sort()).toEqual(['listening', 'reading'])
  })
})

describe('bandDelta', () => {
  it('reports improvement from first to latest attempt', () => {
    const rows = [
      at({ band: 5.5, submitted_at: '2026-07-01T10:00:00.000Z' }),
      at({ band: 7.0, submitted_at: '2026-07-05T10:00:00.000Z' }),
    ]
    expect(bandDelta(rows, 'reading')).toBe(1.5)
  })

  it('reports a negative delta when the band falls', () => {
    const rows = [
      at({ band: 7.0, submitted_at: '2026-07-01T10:00:00.000Z' }),
      at({ band: 6.0, submitted_at: '2026-07-05T10:00:00.000Z' }),
    ]
    expect(bandDelta(rows, 'reading')).toBe(-1)
  })

  it('returns null with fewer than two attempts', () => {
    expect(bandDelta([at()], 'reading')).toBeNull()
    expect(bandDelta([], 'reading')).toBeNull()
  })
})

describe('accuracyByType', () => {
  const withTypes = (byType, over = {}) => at({ marked: { byType }, ...over })

  it('aggregates the same type across attempts', () => {
    const rows = [
      withTypes([{ type: 'Matching headings', correct: 2, total: 4 }]),
      withTypes([{ type: 'Matching headings', correct: 1, total: 3 }]),
    ]
    expect(accuracyByType(rows)).toEqual([
      { type: 'Matching headings', correct: 3, total: 7, accuracy: 3 / 7 },
    ])
  })

  it('sorts weakest type first', () => {
    const rows = [
      withTypes([
        { type: 'Strong', correct: 9, total: 10 },
        { type: 'Weak',   correct: 1, total: 10 },
      ]),
    ]
    expect(accuracyByType(rows).map(r => r.type)).toEqual(['Weak', 'Strong'])
  })

  it('ignores attempts recorded before byType existed', () => {
    const rows = [at({ marked: {} }), withTypes([{ type: 'A', correct: 1, total: 2 }])]
    expect(accuracyByType(rows)).toHaveLength(1)
  })

  it('skips malformed rows with no total', () => {
    const rows = [withTypes([{ type: 'Bad', correct: 0, total: 0 }])]
    expect(accuracyByType(rows)).toEqual([])
  })
})

describe('currentStreak', () => {
  const onDay = iso => at({ submitted_at: iso })

  it('counts consecutive days ending today', () => {
    const now = new Date('2026-07-24T12:00:00')
    const rows = [
      onDay('2026-07-24T09:00:00'),
      onDay('2026-07-23T09:00:00'),
      onDay('2026-07-22T09:00:00'),
    ]
    expect(currentStreak(rows, now)).toBe(3)
  })

  it('keeps the streak alive when today has not been practised yet', () => {
    const now = new Date('2026-07-24T12:00:00')
    const rows = [onDay('2026-07-23T09:00:00'), onDay('2026-07-22T09:00:00')]
    expect(currentStreak(rows, now)).toBe(2)
  })

  it('breaks the streak once a day is missed', () => {
    const now = new Date('2026-07-24T12:00:00')
    const rows = [onDay('2026-07-24T09:00:00'), onDay('2026-07-21T09:00:00')]
    expect(currentStreak(rows, now)).toBe(1)
  })

  it('counts multiple tests on one day once', () => {
    const now = new Date('2026-07-24T12:00:00')
    const rows = [onDay('2026-07-24T09:00:00'), onDay('2026-07-24T18:00:00')]
    expect(currentStreak(rows, now)).toBe(1)
  })

  it('is zero with no completed attempts', () => {
    expect(currentStreak([], new Date())).toBe(0)
  })
})

describe('targetProgress', () => {
  it('averages the best band of each scored skill to a half band', () => {
    const rows = [
      at({ skill: 'reading', band: 7.0 }),
      at({ skill: 'listening', band: 6.0 }),
    ]
    // mean 6.5 → already a half band
    expect(targetProgress(rows, 7).current).toBe(6.5)
  })

  it('rounds an awkward mean to the nearest half band', () => {
    const rows = [
      at({ skill: 'reading', band: 7.0 }),
      at({ skill: 'listening', band: 6.5 }),
    ]
    // mean 6.75 → 7.0
    expect(targetProgress(rows, 7).current).toBe(7)
  })

  it('reports the gap remaining to the target', () => {
    const rows = [at({ skill: 'reading', band: 6.0 }), at({ skill: 'listening', band: 6.0 })]
    const p = targetProgress(rows, 7.5)
    expect(p.gap).toBe(1.5)
    expect(p.reached).toBe(false)
  })

  it('marks the target reached once met', () => {
    const rows = [at({ skill: 'reading', band: 8 }), at({ skill: 'listening', band: 8 })]
    expect(targetProgress(rows, 7.5).reached).toBe(true)
  })

  it('returns nulls when nothing has been scored yet', () => {
    const p = targetProgress([], 7)
    expect(p.current).toBeNull()
    expect(p.gap).toBeNull()
    expect(p.reached).toBe(false)
  })

  it('returns a null target when none is set', () => {
    const rows = [at({ skill: 'reading', band: 7 })]
    expect(targetProgress(rows, null).target).toBeNull()
  })
})

describe('projectSkillBand', () => {
  const series = bands => bands.map((band, i) => at({
    band, submitted_at: new Date(2026, 6, i + 1).toISOString(),
  }))

  it('projects a steady upward trend one step ahead', () => {
    // 5, 6, 7 → slope 1 → next 8
    expect(projectSkillBand(series([5, 6, 7]), 'reading')).toBe(8)
  })

  it('projects a flat trend as the same band', () => {
    expect(projectSkillBand(series([6.5, 6.5, 6.5]), 'reading')).toBe(6.5)
  })

  it('projects a downward trend lower', () => {
    // 7, 6, 5 → slope -1 → next 4
    expect(projectSkillBand(series([7, 6, 5]), 'reading')).toBe(4)
  })

  it('rounds the projection to a half band', () => {
    // 6, 6.5 → slope 0.5 → next 7
    expect(projectSkillBand(series([6, 6.5]), 'reading')).toBe(7)
  })

  it('clamps the projection to 9', () => {
    expect(projectSkillBand(series([8, 8.5, 9]), 'reading')).toBe(9)
  })

  it('returns the single band with only one attempt', () => {
    expect(projectSkillBand(series([6]), 'reading')).toBe(6)
  })

  it('returns null with no attempts', () => {
    expect(projectSkillBand([], 'reading')).toBeNull()
  })
})

describe('predictedBand', () => {
  const s = (skill, bands) => bands.map((band, i) => at({
    skill, band, submitted_at: new Date(2026, 6, i + 1).toISOString(),
  }))

  it('averages each skill projection to a half band', () => {
    const rows = [...s('reading', [6, 7, 8]), ...s('listening', [5, 5.5, 6])]
    // reading → 9, listening → 6.5, mean 7.75 → 8
    expect(predictedBand(rows)).toBe(8)
  })

  it('returns null with nothing to project', () => {
    expect(predictedBand([])).toBeNull()
  })
})

describe('readiness', () => {
  const rising = (skill, bands) => bands.map((band, i) => at({
    skill, band, submitted_at: new Date(2026, 6, i + 1).toISOString(),
  }))

  it('reports no target when none is set', () => {
    expect(readiness(rising('reading', [6, 6.5]), null).state).toBe('no-target')
  })

  it('reports no data when nothing is scored', () => {
    expect(readiness([], 7).state).toBe('no-data')
  })

  it('reports reached once the current band meets the target', () => {
    const rows = [...rising('reading', [8, 8]), ...rising('listening', [8, 8])]
    expect(readiness(rows, 7.5).state).toBe('reached')
  })

  it('reports on-track when the projection reaches the target', () => {
    // both skills climbing to project ≥ 7.5 while current is still below
    const rows = [...rising('reading', [6.5, 7, 7.5]), ...rising('listening', [6.5, 7, 7.5])]
    const r = readiness(rows, 8)
    expect(r.predicted).toBeGreaterThanOrEqual(8)
    expect(r.state).toBe('on-track')
  })

  it('reports behind when both current and projection fall short', () => {
    const rows = [...rising('reading', [5, 5, 5]), ...rising('listening', [5, 5, 5])]
    expect(readiness(rows, 7.5).state).toBe('behind')
  })
})

describe('roundToHalf', () => {
  it.each([
    [6.24, 6.0],
    [6.25, 6.5],
    [6.74, 6.5],
    [6.75, 7.0],
    [7, 7],
  ])('rounds %s to %s', (input, expected) => {
    expect(roundToHalf(input)).toBe(expected)
  })
})
