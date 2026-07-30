/**
 * Progress analytics derived from a candidate's attempt history.
 *
 * Every function here is pure: it takes attempt rows and returns plain data, so
 * the dashboard stays a rendering concern and the maths stays testable.
 *
 * An attempt row is shaped:
 *   { id, skill, submitted_at, band, raw_score, duration_seconds, marked }
 * where `marked.byType` is the optional per-question-type breakdown written at
 * submit time (older attempts predate it and are simply skipped).
 */

/** IELTS reports in half bands. */
export const BAND_STEP = 0.5
export const MAX_BAND = 9

/** Only attempts that were actually finished can carry a band. */
export function completedAttempts(attempts) {
  return (attempts ?? []).filter(a => a?.submitted_at && a?.band != null)
}

/**
 * Best band achieved per skill.
 * @returns {Record<string, number>} e.g. { reading: 7.5, listening: 6.5 }
 */
export function bestBands(attempts) {
  const best = {}
  for (const a of completedAttempts(attempts)) {
    if (best[a.skill] == null || a.band > best[a.skill]) best[a.skill] = a.band
  }
  return best
}

/**
 * Chronological band series per skill, oldest first — the shape a trend line
 * needs.
 * @returns {Record<string, Array<{date: string, band: number, id: string}>>}
 */
export function bandTrend(attempts) {
  const series = {}
  const sorted = completedAttempts(attempts)
    .slice()
    .sort((a, b) => new Date(a.submitted_at) - new Date(b.submitted_at))

  for (const a of sorted) {
    ;(series[a.skill] ??= []).push({
      date: a.submitted_at,
      band: a.band,
      id: a.id,
    })
  }
  return series
}

/**
 * Change between the first and most recent band for a skill.
 * @returns {number|null} signed band delta, or null with fewer than 2 attempts
 */
export function bandDelta(attempts, skill) {
  const series = bandTrend(attempts)[skill] ?? []
  if (series.length < 2) return null
  return round1(series[series.length - 1].band - series[0].band)
}

/**
 * Aggregate accuracy per question type across every attempt that recorded one.
 *
 * @returns {Array<{type: string, correct: number, total: number, accuracy: number}>}
 *   sorted weakest first, so the caller can show what to work on next.
 */
export function accuracyByType(attempts) {
  const tally = new Map()

  for (const a of completedAttempts(attempts)) {
    for (const row of a?.marked?.byType ?? []) {
      if (!row?.type || !row?.total) continue
      const acc = tally.get(row.type) ?? { type: row.type, correct: 0, total: 0 }
      acc.correct += row.correct ?? 0
      acc.total += row.total
      tally.set(row.type, acc)
    }
  }

  return [...tally.values()]
    .map(r => ({ ...r, accuracy: r.total ? r.correct / r.total : 0 }))
    .sort((a, b) => a.accuracy - b.accuracy || b.total - a.total)
}

/**
 * Consecutive days, counting back from today, on which at least one test was
 * submitted. Today not yet practised does not break a streak that ran to
 * yesterday — the day is still in progress.
 *
 * @param {Array} attempts
 * @param {Date} [now] - injectable for testing
 * @returns {number}
 */
export function currentStreak(attempts, now = new Date()) {
  const days = new Set(
    completedAttempts(attempts).map(a => dayKey(new Date(a.submitted_at)))
  )
  if (days.size === 0) return 0

  const cursor = new Date(now)
  // If today has no activity, the streak may still be alive through yesterday.
  if (!days.has(dayKey(cursor))) cursor.setDate(cursor.getDate() - 1)

  let streak = 0
  while (days.has(dayKey(cursor))) {
    streak += 1
    cursor.setDate(cursor.getDate() - 1)
  }
  return streak
}

/**
 * Progress toward a target band, using the candidate's best band per skill.
 *
 * @param {Array} attempts
 * @param {number|null} target
 * @param {string[]} skills - which skills count toward the target
 * @returns {{target: number|null, current: number|null, gap: number|null, reached: boolean, perSkill: Record<string, number>}}
 */
export function targetProgress(attempts, target, skills = ['reading', 'listening']) {
  const best = bestBands(attempts)
  const scored = skills.map(s => best[s]).filter(b => b != null)

  // The overall figure is the mean of the best band in each scored skill,
  // rounded to the nearest half band exactly as IELTS reports an overall score.
  const current = scored.length
    ? roundToHalf(scored.reduce((sum, b) => sum + b, 0) / scored.length)
    : null

  return {
    target: target ?? null,
    current,
    gap: target != null && current != null ? round1(target - current) : null,
    reached: target != null && current != null && current >= target,
    perSkill: best,
  }
}

/**
 * Project the next band for one skill from its recent trend.
 *
 * Fits a least-squares line to the skill's band series (band vs attempt index)
 * and extrapolates one attempt ahead, clamped to 0–9 and rounded to a half
 * band. The projection is deliberately conservative — one step, not ten — so it
 * reads as "where your current rate of improvement is heading", not a promise.
 *
 * @returns {number|null} projected next band, or null with no completed attempts
 */
export function projectSkillBand(attempts, skill) {
  const series = (bandTrend(attempts)[skill] ?? []).map(p => p.band)
  if (series.length === 0) return null
  if (series.length === 1) return series[0]

  const n = series.length
  const xs = series.map((_, i) => i)
  const meanX = (n - 1) / 2
  const meanY = series.reduce((s, y) => s + y, 0) / n
  let num = 0
  let den = 0
  for (let i = 0; i < n; i++) {
    num += (xs[i] - meanX) * (series[i] - meanY)
    den += (xs[i] - meanX) ** 2
  }
  const slope = den === 0 ? 0 : num / den
  const next = series[n - 1] + slope
  return roundToHalf(Math.min(MAX_BAND, Math.max(0, next)))
}

/**
 * Predicted overall band — the mean of each scored skill's projected next band,
 * rounded to a half band the way IELTS reports an overall score.
 *
 * @returns {number|null}
 */
export function predictedBand(attempts, skills = ['reading', 'listening']) {
  const projections = skills
    .map(s => projectSkillBand(attempts, s))
    .filter(b => b != null)
  if (projections.length === 0) return null
  return roundToHalf(projections.reduce((s, b) => s + b, 0) / projections.length)
}

/**
 * How the candidate stands against their target, using both where they are now
 * (best) and where their trend is heading (predicted).
 *
 * @returns {{state: 'no-target'|'no-data'|'reached'|'on-track'|'close'|'behind', gap: number|null, predicted: number|null, current: number|null}}
 */
export function readiness(attempts, target, skills = ['reading', 'listening']) {
  const { current } = targetProgress(attempts, target, skills)
  const predicted = predictedBand(attempts, skills)

  if (target == null) return { state: 'no-target', gap: null, predicted, current }
  if (current == null) return { state: 'no-data', gap: null, predicted, current }

  const gap = round1(target - current)
  let state
  if (current >= target)                       state = 'reached'
  else if (predicted != null && predicted >= target) state = 'on-track'
  else if (gap <= 0.5)                         state = 'close'
  else                                          state = 'behind'
  return { state, gap, predicted, current }
}

/** Round to the nearest half band, the only values IELTS reports. */
export function roundToHalf(n) {
  return Math.round(n * 2) / 2
}

function round1(n) {
  return Math.round(n * 10) / 10
}

function dayKey(d) {
  return `${d.getFullYear()}-${d.getMonth()}-${d.getDate()}`
}
