import { useState, useRef, useEffect, useCallback } from 'react'

export function useHighlight() {
  const [bar, setBar] = useState({ visible: false, x: 0, y: 0 })
  const savedRange = useRef(null)

  const hide = useCallback(() => {
    setBar(b => ({ ...b, visible: false }))
    savedRange.current = null
  }, [])

  useEffect(() => {
    function onMouseDown(e) {
      if (e.target.closest('#hl-bar')) return
      setBar(b => ({ ...b, visible: false }))
    }
    document.addEventListener('mousedown', onMouseDown)
    return () => document.removeEventListener('mousedown', onMouseDown)
  }, [])

  function showBar(sel) {
    if (!sel || sel.isCollapsed || !sel.toString().trim()) return
    try {
      const r = sel.getRangeAt(0)
      savedRange.current = r.cloneRange()
      const rc = r.getBoundingClientRect()
      const x = Math.max(4, Math.min(rc.left + rc.width / 2 - 88, window.innerWidth - 188))
      const y = Math.max(4, rc.top - 52)
      setBar({ visible: true, x, y })
    } catch {}
  }

  function onMouseUp(e) {
    if (e.target.closest('#hl-bar')) return
    setTimeout(() => showBar(window.getSelection()), 15)
  }

  function onTouchEnd(e) {
    if (e.target.closest('#hl-bar')) return
    setTimeout(() => showBar(window.getSelection()), 30)
  }

  return { bar, savedRange, onMouseUp, onTouchEnd, hide }
}
