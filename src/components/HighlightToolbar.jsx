import { createPortal } from 'react-dom'
import { applyHighlight, removeHighlightsInRange } from '../lib/highlight'

const COLORS = [
  { key: 'yellow', bg: '#FFE566', fg: '#5a4600', label: 'Yellow' },
  { key: 'green',  bg: '#6EE7A0', fg: '#0f4726', label: 'Green'  },
  { key: 'blue',   bg: '#93C5FD', fg: '#1e3a6e', label: 'Blue'   },
  { key: 'purple', bg: '#C4B5FD', fg: '#4c1d95', label: 'Purple' },
]

export function HighlightBar({ bar, savedRange, onHide }) {
  if (!bar.visible) return null

  function applyColor(bg) {
    const r = savedRange.current
    if (!r) return
    const sel = window.getSelection()
    sel?.removeAllRanges()
    sel?.addRange(r)
    applyHighlight(r, bg)
    onHide()
  }

  function clearHighlights() {
    const r = savedRange.current
    if (!r) return
    removeHighlightsInRange(r)
    onHide()
  }

  return createPortal(
    <div
      id="hl-bar"
      className="hl-bar"
      style={{ left: bar.x, top: bar.y }}
      onMouseDown={e => e.preventDefault()}
    >
      {COLORS.map(c => (
        <button
          key={c.key}
          type="button"
          className="hlb"
          style={{ background: c.bg, color: c.fg }}
          onClick={() => applyColor(c.bg)}
          title={c.label}
          aria-label={`Highlight ${c.label}`}
        >
          A
        </button>
      ))}
      <button
        type="button"
        className="hlb hlb-x"
        onClick={clearHighlights}
        title="Clear highlight"
        aria-label="Clear highlight"
      >
        ✕ Clear
      </button>
    </div>,
    document.body
  )
}
