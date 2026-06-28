/**
 * Given a paragraph text and an array of evidence items, locates each item's
 * evidence quote in the text and merges overlapping or adjacent spans into
 * clusters. Returns one cluster per distinct highlight region, each carrying
 * all the items whose evidence falls within that region.
 *
 * This allows multiple IELTS questions that reference the same or overlapping
 * passage sentences to share a single highlight and show multiple [N] boxes.
 *
 * @param {string} text - The full paragraph text.
 * @param {Array<{pq:{number,correct}, meta:{evidence:{quote}}}>} items
 * @returns {Array<{start:number, end:number, items:Array}>}
 */
export function mergeHighlightSpans(text, items) {
  const spans = []
  for (const item of items) {
    const quote = item.meta?.evidence?.quote
    if (!quote) continue
    const idx = text.toLowerCase().indexOf(quote.toLowerCase())
    if (idx === -1) continue
    spans.push({ start: idx, end: idx + quote.length, item })
  }

  if (spans.length === 0) return []

  // Sort by start position; break ties by putting longer spans first so the
  // cluster envelope expands correctly when the wider span comes second.
  spans.sort((a, b) => a.start - b.start || b.end - a.end)

  const clusters = []
  for (const sp of spans) {
    const last = clusters[clusters.length - 1]
    if (!last || sp.start >= last.end) {
      clusters.push({ start: sp.start, end: sp.end, items: [sp.item] })
    } else {
      // Overlapping or duplicate: extend the cluster and collect the item.
      last.end = Math.max(last.end, sp.end)
      last.items.push(sp.item)
    }
  }

  // Sort items within each cluster by question number for consistent render order.
  for (const cluster of clusters) {
    cluster.items.sort((a, b) => a.pq.number - b.pq.number)
  }

  return clusters
}
