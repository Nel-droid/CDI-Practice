import {
  LISTENING_TABLE,
  ACADEMIC_READING_TABLE,
  GENERAL_READING_TABLE,
} from './bandTables.js'

const TABLES = {
  listening: LISTENING_TABLE,
  academic: ACADEMIC_READING_TABLE,
  'academic-reading': ACADEMIC_READING_TABLE,
  general: GENERAL_READING_TABLE,
  'general-reading': GENERAL_READING_TABLE,
}

/**
 * Convert a raw score (0–40) to a band using the appropriate lookup table.
 *
 * @param {number} raw - integer 0–40 (clamped if outside range)
 * @param {'listening'|'academic'|'academic-reading'|'general'|'general-reading'} variant
 * @returns {number} band score (e.g. 6.5)
 */
export function rawToBand(raw, variant) {
  const table = TABLES[String(variant).toLowerCase()]
  if (!table) throw new Error(`Unknown variant: "${variant}"`)
  const clamped = Math.max(0, Math.min(40, Math.round(raw)))
  return table[clamped]
}

/**
 * Round a mean band score to the nearest half-band.
 *
 * Rules (from spec §5):
 *   decimal < 0.25  → round down to whole number
 *   0.25 ≤ dec < 0.75  → round to x.5
 *   dec ≥ 0.75  → round up to next whole number
 *
 * @param {number} mean
 * @returns {number}
 */
export function roundToHalfBand(mean) {
  const whole = Math.floor(mean)
  const dec = mean - whole
  if (dec < 0.25) return whole
  if (dec < 0.75) return whole + 0.5
  return whole + 1
}

/**
 * Compute the overall band from an array of module bands.
 * Returns the mean rounded to the nearest half-band.
 *
 * @param {number[]} bands
 * @returns {number}
 */
export function overallBand(bands) {
  if (!bands || bands.length === 0) return 0
  const mean = bands.reduce((sum, b) => sum + b, 0) / bands.length
  return roundToHalfBand(mean)
}
