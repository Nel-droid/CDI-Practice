import { useRef, useState } from 'react'

export const DRAW_COLORS = [
  { value: '#e53e3e', label: 'Red'   },
  { value: '#3182ce', label: 'Blue'  },
  { value: '#38a169', label: 'Green' },
  { value: '#1a1a1a', label: 'Black' },
]

export function AnnotationCanvas({ canvasRef, chartImgRef, onImageLoad }) {
  const isDrawingRef = useRef(false)
  const lastPosRef   = useRef({ x: 0, y: 0 })
  const toolRef      = useRef('pen')
  const colorRef     = useRef('#e53e3e')

  const [tool,  setToolState]  = useState('pen')
  const [color, setColorState] = useState('#e53e3e')

  function setTool(t)  { toolRef.current  = t; setToolState(t)  }
  function setColor(c) { colorRef.current = c; setColorState(c) }

  function getCanvasPos(e) {
    const canvas = canvasRef.current
    const rect   = canvas.getBoundingClientRect()
    return {
      x: ((e.clientX - rect.left) / rect.width)  * canvas.width,
      y: ((e.clientY - rect.top)  / rect.height) * canvas.height,
    }
  }

  function getTouchPos(e) {
    return getCanvasPos(e.touches[0])
  }

  function applyStroke(ctx, from, to) {
    const isPen = toolRef.current === 'pen'
    ctx.save()
    ctx.globalCompositeOperation = isPen ? 'source-over' : 'destination-out'
    ctx.beginPath()
    ctx.moveTo(from.x, from.y)
    ctx.lineTo(to.x, to.y)
    ctx.strokeStyle = isPen ? colorRef.current : 'rgba(0,0,0,1)'
    ctx.lineWidth   = isPen ? 3 : 22
    ctx.lineCap     = 'round'
    ctx.lineJoin    = 'round'
    ctx.stroke()
    ctx.restore()
  }

  function dotAt(ctx, pos) {
    const isPen = toolRef.current === 'pen'
    ctx.save()
    ctx.globalCompositeOperation = isPen ? 'source-over' : 'destination-out'
    ctx.beginPath()
    ctx.arc(pos.x, pos.y, isPen ? 1.5 : 11, 0, Math.PI * 2)
    ctx.fillStyle = isPen ? colorRef.current : 'rgba(0,0,0,1)'
    ctx.fill()
    ctx.restore()
  }

  function startDraw(e) {
    e.preventDefault()
    isDrawingRef.current = true
    const pos = getCanvasPos(e)
    lastPosRef.current = pos
    dotAt(canvasRef.current.getContext('2d'), pos)
  }

  function continueDraw(e) {
    e.preventDefault()
    if (!isDrawingRef.current) return
    const pos = getCanvasPos(e)
    applyStroke(canvasRef.current.getContext('2d'), lastPosRef.current, pos)
    lastPosRef.current = pos
  }

  function endDraw(e) {
    e.preventDefault()
    isDrawingRef.current = false
  }

  function startDrawTouch(e) {
    e.preventDefault()
    isDrawingRef.current = true
    const pos = getTouchPos(e)
    lastPosRef.current = pos
    dotAt(canvasRef.current.getContext('2d'), pos)
  }

  function continueDrawTouch(e) {
    e.preventDefault()
    if (!isDrawingRef.current) return
    const pos = getTouchPos(e)
    applyStroke(canvasRef.current.getContext('2d'), lastPosRef.current, pos)
    lastPosRef.current = pos
  }

  function clearAll() {
    const canvas = canvasRef.current
    canvas.getContext('2d').clearRect(0, 0, canvas.width, canvas.height)
  }

  function syncCanvasSize() {
    const img    = chartImgRef.current
    const canvas = canvasRef.current
    if (!img || !canvas) return
    canvas.width  = img.naturalWidth
    canvas.height = img.naturalHeight
    onImageLoad?.()
  }

  return (
    <>
      <div className="ann-toolbar" role="toolbar" aria-label="Annotation tools">
        <button
          className={`ann-btn ${tool === 'pen' ? 'ann-btn-active' : ''}`}
          onClick={() => setTool('pen')}
          title="Draw (pen)"
          aria-pressed={tool === 'pen'}
        >✏️ Pen</button>

        <button
          className={`ann-btn ${tool === 'eraser' ? 'ann-btn-active' : ''}`}
          onClick={() => setTool('eraser')}
          title="Eraser"
          aria-pressed={tool === 'eraser'}
        >⌫ Eraser</button>

        <div className="ann-divider" aria-hidden />

        {DRAW_COLORS.map(c => (
          <button
            key={c.value}
            className={`ann-color-btn ${color === c.value && tool === 'pen' ? 'ann-color-active' : ''}`}
            style={{ '--swatch': c.value }}
            onClick={() => { setColor(c.value); setTool('pen') }}
            title={c.label}
            aria-label={`${c.label} pen`}
          />
        ))}

        <div className="ann-divider" aria-hidden />

        <button className="ann-btn" onClick={clearAll} title="Clear all annotations">
          Clear
        </button>
      </div>

      <div className="chart-wrapper">
        <img
          ref={chartImgRef}
          className="chart-image"
          alt="Chart to describe"
          onLoad={syncCanvasSize}
          draggable={false}
        />
        <canvas
          ref={canvasRef}
          className="annotation-canvas"
          onMouseDown={startDraw}
          onMouseMove={continueDraw}
          onMouseUp={endDraw}
          onMouseLeave={endDraw}
          onTouchStart={startDrawTouch}
          onTouchMove={continueDrawTouch}
          onTouchEnd={endDraw}
        />
      </div>
    </>
  )
}
