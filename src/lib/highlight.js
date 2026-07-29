const BLOCKED = 'input, textarea, button, select, .exam-header, .exam-footer, .exam-section-tabs, .exam-progress-strip, .exam-palette-wrap'

export function applyHighlight(range, color) {
  const ancestor = range.commonAncestorContainer
  const el = ancestor.nodeType === Node.ELEMENT_NODE ? ancestor : ancestor.parentElement
  if (el?.closest(BLOCKED)) return

  // Collect all text segments BEFORE mutating anything
  const segments = getTextSegments(range)

  for (const { node, start, end } of segments) {
    if (start >= end) continue

    // Isolate just the selected slice by splitting in place — never extracting
    let target = node
    if (start > 0) {
      target = node.splitText(start) // node=[0,start) target=[start,len)
    }
    const sliceLen = end - start
    if (sliceLen < target.length) {
      target.splitText(sliceLen) // target=[0,sliceLen), remainder after
    }

    if (target.textContent) {
      const m = document.createElement('mark')
      m.className = 'hl'
      m.style.background = color
      m.dataset.hl = '1'
      target.parentNode.insertBefore(m, target)
      m.appendChild(target)
    }
  }

  window.getSelection()?.removeAllRanges()
}

function getTextSegments(range) {
  const segments = []
  const root = range.commonAncestorContainer

  if (root.nodeType === Node.TEXT_NODE) {
    segments.push({ node: root, start: range.startOffset, end: range.endOffset })
    return segments
  }

  const walker = document.createTreeWalker(root, NodeFilter.SHOW_TEXT, null)
  let node
  while ((node = walker.nextNode())) {
    if (!range.intersectsNode(node)) continue
    const start = node === range.startContainer ? range.startOffset : 0
    const end = node === range.endContainer ? range.endOffset : node.length
    if (start < end) segments.push({ node, start, end })
  }
  return segments
}

export function removeHighlightsInRange(range) {
  document.querySelectorAll('mark[data-hl]').forEach(m => {
    if (range.intersectsNode(m)) {
      const p = m.parentNode
      while (m.firstChild) p.insertBefore(m.firstChild, m)
      p.removeChild(m)
      p.normalize()
    }
  })
  window.getSelection()?.removeAllRanges()
}
