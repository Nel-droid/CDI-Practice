import { useCallback, useEffect, useState } from 'react'

/**
 * Reading-comfort preferences for the exam screen.
 *
 * The real computer-delivered IELTS lets a candidate resize the text and drag
 * the divider between the passage and the questions. Both are comfort settings
 * that should survive a page reload and carry across tests, so they live in
 * localStorage rather than component state.
 */

const SIZE_KEY  = 'cdi-exam-textsize'
const SPLIT_KEY = 'cdi-exam-split'

/** Text size steps, as a multiplier on the panel's base font size. */
export const TEXT_SIZES = [0.9375, 1, 1.125, 1.25]
export const DEFAULT_SIZE_INDEX = 1

/** Passage column width, as a percentage of the split area. */
export const MIN_SPLIT = 30
export const MAX_SPLIT = 70
const DEFAULT_SPLIT = 50

function readNum(key, fallback, min, max) {
  try {
    const n = Number(localStorage.getItem(key))
    if (!Number.isFinite(n) || n === 0) return fallback
    return Math.min(max, Math.max(min, n))
  } catch {
    return fallback
  }
}

function write(key, value) {
  try { localStorage.setItem(key, String(value)) } catch { /* private mode */ }
}

export function useExamPrefs() {
  const [sizeIndex, setSizeIndex] = useState(
    () => readNum(SIZE_KEY, DEFAULT_SIZE_INDEX, 0, TEXT_SIZES.length - 1)
  )
  const [split, setSplit] = useState(
    () => readNum(SPLIT_KEY, DEFAULT_SPLIT, MIN_SPLIT, MAX_SPLIT)
  )

  useEffect(() => { write(SIZE_KEY, sizeIndex) }, [sizeIndex])
  useEffect(() => { write(SPLIT_KEY, split) }, [split])

  const biggerText = useCallback(
    () => setSizeIndex(i => Math.min(TEXT_SIZES.length - 1, i + 1)), []
  )
  const smallerText = useCallback(
    () => setSizeIndex(i => Math.max(0, i - 1)), []
  )

  const setSplitClamped = useCallback(
    pct => setSplit(Math.min(MAX_SPLIT, Math.max(MIN_SPLIT, pct))), []
  )

  const resetSplit = useCallback(() => setSplit(DEFAULT_SPLIT), [])

  return {
    scale: TEXT_SIZES[sizeIndex],
    sizeIndex,
    canGrow: sizeIndex < TEXT_SIZES.length - 1,
    canShrink: sizeIndex > 0,
    biggerText,
    smallerText,
    split,
    setSplit: setSplitClamped,
    resetSplit,
  }
}
