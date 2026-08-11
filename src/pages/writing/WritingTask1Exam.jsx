import { useEffect, useRef, useState, useMemo } from 'react'
import { useParams, useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { writingChartUrl } from '../../lib/s3assets'
import { ThemeToggle } from '../../components/ThemeToggle'
import { AnnotationCanvas } from '../../components/AnnotationCanvas'
import '../reading/ReadingExam.css'
import './WritingTask1Exam.css'

function formatTime(s) {
  const m = Math.floor(s / 60)
  const sec = s % 60
  return `${String(m).padStart(2, '0')}:${String(sec).padStart(2, '0')}`
}

function countWords(text) {
  const t = text.trim()
  return t === '' ? 0 : t.split(/\s+/).length
}

// ── Fullscreen chart overlay ───────────────────────────────────────────────────

function FullscreenOverlay({ src, onClose }) {
  useEffect(() => {
    const handler = e => { if (e.key === 'Escape') onClose() }
    document.addEventListener('keydown', handler)
    return () => document.removeEventListener('keydown', handler)
  }, [onClose])

  return (
    <div
      className="chart-fullscreen-backdrop"
      onClick={onClose}
      role="dialog"
      aria-modal="true"
      aria-label="Chart fullscreen view"
    >
      <button className="chart-fullscreen-close" onClick={onClose} aria-label="Close fullscreen">✕</button>
      <img
        className="chart-fullscreen-img"
        src={src}
        alt="Chart (fullscreen)"
        onClick={e => e.stopPropagation()}
        draggable={false}
      />
    </div>
  )
}

// ── Main exam component ───────────────────────────────────────────────────────

export default function WritingTask1Exam() {
  const { promptId } = useParams()
  const navigate     = useNavigate()
  const { user }     = useAuth()

  const [prompt,       setPrompt]       = useState(null)
  const [chartUrl,     setChartUrl]     = useState(null)
  const [loading,      setLoading]      = useState(true)
  const [loadError,    setLoadError]    = useState('')
  const [essay,        setEssay]        = useState('')
  const [seconds,      setSeconds]      = useState(0)
  const [showConfirm,  setShowConfirm]  = useState(false)
  const [showFullscreen, setShowFullscreen] = useState(false)
  const [submitting,   setSubmitting]   = useState(false)
  const [chartLoaded,  setChartLoaded]  = useState(false)
  const [notes,        setNotes]        = useState('')

  const annotationCanvasRef = useRef(null)
  const chartImgRef         = useRef(null)
  const timerRef            = useRef(null)

  // Count-up timer
  useEffect(() => {
    timerRef.current = setInterval(() => setSeconds(s => s + 1), 1000)
    return () => clearInterval(timerRef.current)
  }, [])

  // Load prompt + signed chart URL
  useEffect(() => {
    async function load() {
      const { data: p, error: e } = await supabase
        .from('writing_prompts')
        .select('*')
        .eq('id', promptId)
        .single()
      if (e || !p) { setLoadError('Prompt not found.'); setLoading(false); return }
      setPrompt(p)

      if (p.chart_path) {
        const url = writingChartUrl(p.chart_path)
        setChartUrl(url)
        if (chartImgRef.current) chartImgRef.current.src = url
      }
      setLoading(false)
    }
    load()
  }, [promptId])

  // Set img src once chartUrl is known (ref may already be mounted)
  useEffect(() => {
    if (chartUrl && chartImgRef.current) chartImgRef.current.src = chartUrl
  }, [chartUrl])

  const wordCount = useMemo(() => countWords(essay), [essay])
  const minWords  = prompt?.min_words ?? 150

  const wordCountClass = wordCount >= minWords
    ? 'wc-good'
    : wordCount >= Math.floor(minWords * 0.67)
    ? 'wc-warn'
    : 'wc-low'

  async function submitEssay() {
    if (submitting) return
    setSubmitting(true)
    clearInterval(timerRef.current)

    // Capture annotation canvas as data URL before navigating
    const annotationDataUrl = (() => {
      const canvas = annotationCanvasRef.current
      if (!canvas) return null
      const ctx = canvas.getContext('2d')
      // Check if canvas has any drawn content
      const data = ctx.getImageData(0, 0, canvas.width, canvas.height).data
      const hasContent = data.some(v => v !== 0)
      return hasContent ? canvas.toDataURL('image/png') : null
    })()

    const { data: attempt, error: err } = await supabase
      .from('writing_attempts')
      .insert({
        user_id:          user.id,
        prompt_id:        promptId,
        task_type:        'task1',
        essay,
        word_count:       wordCount,
        duration_seconds: seconds,
      })
      .select('id')
      .single()

    if (err || !attempt) {
      setSubmitting(false)
      clearInterval(timerRef.current)
      timerRef.current = setInterval(() => setSeconds(s => s + 1), 1000)
      alert('Could not save your response. Please try again.')
      return
    }

    navigate(`/writing/task1/results/${attempt.id}`, {
      state: { annotationDataUrl, chartUrl, promptTitle: prompt?.title },
    })
  }

  if (loading) {
    return <div className="exam-loading" aria-live="polite">Loading task…</div>
  }

  if (loadError) {
    return (
      <div className="exam-error" role="alert">
        <p>{loadError}</p>
        <button className="btn btn-primary" onClick={() => navigate('/writing')}>
          Back to Writing
        </button>
      </div>
    )
  }

  return (
    <div className="exam-layout wt1-layout">
      {/* ── Header ── */}
      <header className="exam-header">
        <div className="exam-header-left">
          <span className="exam-logo">CDI Practice</span>
          <span className="exam-badge">Writing Task 1</span>
          {prompt?.title && (
            <span className="exam-test-name">{prompt.title}</span>
          )}
        </div>

        <div className="wt1-timer" aria-live="off" aria-label="Time elapsed">
          <span className="wt1-timer-label">Time</span>
          <span className="wt1-timer-value">{formatTime(seconds)}</span>
        </div>

        <div className="exam-header-right">
          <ThemeToggle />
          <button
            className="btn exam-submit-btn"
            onClick={() => setShowConfirm(true)}
            disabled={submitting}
          >
            {submitting ? 'Submitting…' : 'Submit Task 1 →'}
          </button>
        </div>
      </header>

      {/* ── Body ── */}
      <div className="exam-body wt1-body">
        {/* Left: chart panel */}
        <div className="wt1-chart-col">
          <div className="wt1-chart-inner">
            <div className="wt1-chart-topbar">
              <span className="wt1-chart-heading">Chart</span>
              {chartUrl && (
                <button
                  className="wt1-fullscreen-btn"
                  onClick={() => setShowFullscreen(true)}
                  aria-label="View chart fullscreen"
                >
                  ⛶ Fullscreen
                </button>
              )}
            </div>

            {chartUrl ? (
              <AnnotationCanvas
                canvasRef={annotationCanvasRef}
                chartImgRef={chartImgRef}
                onImageLoad={() => setChartLoaded(true)}
              />
            ) : (
              <div className="wt1-no-chart">
                <p>No chart image available for this prompt.</p>
              </div>
            )}

            <div className="exam-notes">
              <span className="exam-notes-label">Notes</span>
              <textarea
                className="exam-notes-area"
                value={notes}
                onChange={e => setNotes(e.target.value)}
                placeholder="Jot down key data points, vocabulary, or planning notes…"
                aria-label="Scratch pad notes"
                spellCheck={false}
              />
            </div>
          </div>
        </div>

        {/* Right: editor panel */}
        <div className="wt1-editor-col">
          <div className="wt1-prompt-box">
            <p className="wt1-prompt-text">{prompt?.prompt}</p>
          </div>

          <textarea
            className="wt1-textarea"
            value={essay}
            onChange={e => setEssay(e.target.value)}
            placeholder="Write your response here…"
            aria-label="Essay response"
            spellCheck
          />

          <div className="wt1-wordcount-bar">
            <span className={`wt1-wordcount-num ${wordCountClass}`}>
              {wordCount} {wordCount === 1 ? 'word' : 'words'}
            </span>
            <span className="wt1-wordcount-min">
              minimum {minWords}
            </span>
            {wordCount >= minWords && (
              <span className="wt1-wordcount-ok">✓ Good length</span>
            )}
          </div>
        </div>
      </div>

      {/* ── Fullscreen chart overlay ── */}
      {showFullscreen && chartUrl && (
        <FullscreenOverlay
          src={chartUrl}
          onClose={() => setShowFullscreen(false)}
        />
      )}

      {/* ── Submit confirmation modal ── */}
      {showConfirm && (
        <div className="modal-backdrop" onClick={() => setShowConfirm(false)}>
          <div className="modal-box" onClick={e => e.stopPropagation()}>
            <h2 className="modal-title">Submit Task 1?</h2>
            <div className="modal-body">
              <p>
                You have written <strong>{wordCount} words</strong>
                {wordCount < minWords && (
                  <span className="wt1-warn-words">
                    {' '}(below the {minWords}-word minimum)
                  </span>
                )}
                .
              </p>
              <p>Once submitted you can download a PDF of your response.</p>
            </div>
            <div className="modal-actions">
              <button
                className="btn btn-outline"
                onClick={() => setShowConfirm(false)}
                disabled={submitting}
              >
                Continue writing
              </button>
              <button
                className="btn btn-primary"
                onClick={submitEssay}
                disabled={submitting}
              >
                {submitting ? 'Saving…' : 'Submit →'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
