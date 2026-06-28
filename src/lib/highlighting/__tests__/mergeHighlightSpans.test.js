import { describe, it, expect } from 'vitest'
import { mergeHighlightSpans } from '../mergeHighlightSpans.js'

// Helpers
const item = (number, correct, quote) => ({
  pq: { number, correct },
  meta: { evidence: { quote } },
})

const nums = clusters => clusters.map(c => c.items.map(i => i.pq.number))

describe('mergeHighlightSpans — empty / no-match', () => {
  it('returns [] when the items array is empty', () => {
    expect(mergeHighlightSpans('some text', [])).toEqual([])
  })

  it('returns [] when no item has an evidence field', () => {
    expect(mergeHighlightSpans('some text', [{ pq: { number: 1, correct: true }, meta: {} }])).toEqual([])
  })

  it('returns [] when the quote is not present in the text', () => {
    expect(mergeHighlightSpans('hello world', [item(1, true, 'foo bar')])).toEqual([])
  })
})

describe('mergeHighlightSpans — single span', () => {
  it('returns one cluster for a single matching quote', () => {
    const clusters = mergeHighlightSpans('The quick brown fox', [item(5, true, 'quick brown')])
    expect(clusters).toHaveLength(1)
    expect(clusters[0].start).toBe(4)
    expect(clusters[0].end).toBe(15)
    expect(nums(clusters)).toEqual([[5]])
  })
})

describe('mergeHighlightSpans — overlapping spans (Mode A fix)', () => {
  it('merges two questions with identical quotes into one cluster with both [N] boxes', () => {
    const text = 'Some city farms have introduced beehives and native plant species in many cities.'
    const clusters = mergeHighlightSpans(text, [
      item(5,  true,  'introduced beehives and native plant species'),
      item(10, false, 'introduced beehives and native plant species'),
    ])
    expect(clusters).toHaveLength(1)
    expect(nums(clusters)).toEqual([[5, 10]])
  })

  it('merges when Q9 quote is a prefix of Q3 quote (same start, Q3 longer)', () => {
    const text = 'locally grown produce can be up to 40% cheaper for consumers when sold at markets'
    const clusters = mergeHighlightSpans(text, [
      item(3, true,  'locally grown produce can be up to 40% cheaper for consumers when sold at markets'),
      item(9, false, 'locally grown produce can be up to 40% cheaper for consumers'),
    ])
    expect(clusters).toHaveLength(1)
    expect(nums(clusters)).toEqual([[3, 9]])
  })

  it('merges when Q8 quote starts inside Q2 quote and extends beyond it', () => {
    const text = 'range from small gardens to large-scale farms that use hydroponic systems to grow crops'
    const clusters = mergeHighlightSpans(text, [
      item(2, true,  'range from small gardens to large-scale farms that use hydroponic systems'),
      item(8, false, 'large-scale farms that use hydroponic systems to grow crops'),
    ])
    expect(clusters).toHaveLength(1)
    expect(nums(clusters)).toEqual([[2, 8]])
    // Cluster span must cover both quotes (union)
    expect(text.slice(clusters[0].start, clusters[0].end)).toBe(
      'range from small gardens to large-scale farms that use hydroponic systems to grow crops'
    )
  })

  it('merges when Q11 quote is a prefix of Q7 quote', () => {
    const text = 'many projects rely on grants or subsidies to become financially viable'
    const clusters = mergeHighlightSpans(text, [
      item(7,  true,  'many projects rely on grants or subsidies to become financially viable'),
      item(11, false, 'many projects rely on grants or subsidies'),
    ])
    expect(clusters).toHaveLength(1)
    expect(nums(clusters)).toEqual([[7, 11]])
  })

  it('sorts items within a merged cluster by question number regardless of span order', () => {
    const text = 'The technique spread rapidly through the Roman Empire and beyond.'
    const clusters = mergeHighlightSpans(text, [
      item(39, true,  'technique spread rapidly through the Roman'),
      item(15, false, 'spread rapidly through the Roman Empire'),
    ])
    expect(clusters).toHaveLength(1)
    // Q15 < Q39, so Q15 should appear first after sort
    expect(nums(clusters)).toEqual([[15, 39]])
  })
})

describe('mergeHighlightSpans — non-overlapping spans', () => {
  it('keeps two non-overlapping quotes as separate clusters', () => {
    const text = 'First sentence ends here. Second sentence starts here.'
    const clusters = mergeHighlightSpans(text, [
      item(1, true,  'First sentence'),
      item(2, false, 'Second sentence'),
    ])
    expect(clusters).toHaveLength(2)
    expect(nums(clusters)).toEqual([[1], [2]])
  })

  it('returns clusters in document order (left to right)', () => {
    const text = 'Alpha is first. Beta is second. Gamma is third.'
    const clusters = mergeHighlightSpans(text, [
      item(3, true, 'Gamma is third'),
      item(1, true, 'Alpha is first'),
      item(2, true, 'Beta is second'),
    ])
    expect(clusters).toHaveLength(3)
    expect(nums(clusters)).toEqual([[1], [2], [3]])
  })
})
