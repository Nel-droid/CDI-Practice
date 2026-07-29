import { useEffect, useRef, useState, useMemo } from 'react'
import { useParams, useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { ThemeToggle } from '../../components/ThemeToggle'
import { AnnotationCanvas } from '../../components/AnnotationCanvas'
import '../reading/ReadingExam.css'
import './WritingTask1Exam.css'
import './WritingTask2Exam.css'
import './WritingFullTestExam.css'

const FULL_TEST_DURATION = 60 * 60  // 3600 seconds

function formatTime(s) {
  const m = Math.floor(s / 60)
  const sec = s % 60
  return `${String(m).padStart(2, '0')}:${String(sec).padStart(2, '0')}`
}

function countWords(text) {
  const t = text.trim()
  return t === '' ? 0 : t.split(/\s+/).length
}

function wcClass(count, min) {
  return count >= min ? 'wc-good' : count >= Math.floor(min * 0.67) ? 'wc-warn' : 'wc-low'
}

function FullscreenOverlay({ src, onClose }) {
  useEffect(() => {
    const h = e => { if (e.key === 'Escape') onClose() }
    document.addEventListener('keydown', h)
    return () => document.removeEventListener('keydown', h)
  }, [onClose])
  return (
    <div className="chart-fullscreen-backdrop" onClick={onClose} role="dialog" aria-modal="true">
      <button className="chart-fullscreen-close" onClick={onClose} aria-label="Close fullscreen">✕</button>
      <img className="chart-fullscreen-img" src={src} alt="Chart (fullscreen)"
        onClick={e => e.stopPropagation()} draggable={false} />
    </div>
  )
}

export default function WritingFullTestExam() {
  const { sessionId } = useParams()
  const navigate      = useNavigate()
  const { user }      = useAuth()

  // Data
  const [task1Prompt,   setTask1Prompt]   = useState(null)
  const [task2Prompt,   setTask2Prompt]   = useState(null)
  const [task1ChartUrl, setTask1ChartUrl] = useState(null)
  const [loading,       setLoading]       = useState(true)
  const [loadError,     setLoadError]     = useState('')

  // Active tab — both bodies stay mounted, only display toggles
  const [activeTab, setActiveTab] = useState('task1')

  // Essays
  const [task1Essay, setTask1Essay] = useState('')
  const [task2Essay, setTask2Essay] = useState('')
  const [notes1,     setNotes1]     = useState('')
  const [notes2,     setNotes2]     = useState('')
  const [showFullscreen, setShowFullscreen] = useState(false)

  // Timer
  const [seconds, setSeconds] = useState(FULL_TEST_DURATION)
  const [timeUp,  setTimeUp]  = useState(false)

  // UI
  const [showConfirm, setShowConfirm] = useState(false)
  const [submitting,  setSubmitting]  = useState(false)

  // Refs
  const timerRef         = useRef(null)
  const annotCanvasRef   = useRef(null)
  const chartImgRef      = useRef(null)
  const hasAutoSubmitted = useRef(false)
  // Keep latest essay values accessible in auto-submit without stale closure
  const task1EssayRef    = useRef('')
  const task2EssayRef    = useRef('')
  task1EssayRef.current  = task1Essay
  task2EssayRef.current  = task2Essay

  // ── Timer ──────────────────────────────────────────────────────────────────
  useEffect(() => {
    timerRef.current = setInterval(() => setSeconds(s => (s > 0 ? s - 1 : 0)), 1000)
    return () => clearInterval(timerRef.current)
  }, [])

  useEffect(() => {
    if (seconds === 0 && !timeUp) setTimeUp(true)
  }, [seconds, timeUp])

  // ── Load session + prompts ─────────────────────────────────────────────────
  useEffect(() => {
    async function load() {
      const { data: sess, error: e } = await supabase
        .from('full_test_sessions')
        .select('*')
        .eq('id', sessionId)
        .single()
      if (e || !sess) { setLoadError('Session not found.'); setLoading(false); return }

      const [{ data: p1 }, { data: p2 }] = await Promise.all([
        supabase.from('writing_prompts').select('*').eq('id', sess.task1_prompt_id).single(),
        supabase.from('writing_prompts').select('*').eq('id', sess.task2_prompt_id).single(),
      ])
      if (p1) setTask1Prompt(p1)
      if (p2) setTask2Prompt(p2)

      if (p1?.chart_path) {
        const { data: sd } = await supabase.storage
          .from('writing-charts')
          .createSignedUrl(p1.chart_path, 3600)
        if (sd?.signedUrl) setTask1ChartUrl(sd.signedUrl)
      }
      setLoading(false)
    }
    load()
  }, [sessionId])

  // Set chart img src once URL is available (AnnotationCanvas img ref)
  useEffect(() => {
    if (task1ChartUrl && chartImgRef.current) chartImgRef.current.src = task1ChartUrl
  }, [task1ChartUrl])

  const task1WordCount = useMemo(() => countWords(task1Essay), [task1Essay])
  const task2WordCount = useMemo(() => countWords(task2Essay), [task2Essay])
  const task1MinWords  = task1Prompt?.min_words ?? 150
  const task2MinWords  = task2Prompt?.min_words ?? 250

  const timerWarning = seconds > 0 && seconds < 5 * 60
  const timerDanger  = seconds > 0 && seconds < 60

  function captureAnnotation() {
    const canvas = annotCanvasRef.current
    if (!canvas) return null
    const data = canvas.getContext('2d').getImageData(0, 0, canvas.width, canvas.height).data
    return data.some(v => v !== 0) ? canvas.toDataURL('image/png') : null
  }

  // ── Submit (manual or auto) ────────────────────────────────────────────────
  async function submitFullTest(t1Essay, t2Essay) {
    if (submitting) return
    setSubmitting(true)
    setShowConfirm(false)
    clearInterval(timerRef.current)

    const essay1 = t1Essay ?? task1EssayRef.current
    const essay2 = t2Essay ?? task2EssayRef.current
    const wc1    = countWords(essay1)
    const wc2    = countWords(essay2)
    const elapsed = FULL_TEST_DURATION - seconds
    const annotDataUrl = captureAnnotation()

    const [{ data: t1Att }, { data: t2Att }] = await Promise.all([
      supabase.from('writing_attempts').insert({
        user_id: user.id, prompt_id: task1Prompt?.id, task_type: 'task1',
        essay: essay1, word_count: wc1, duration_seconds: elapsed,
      }).select('id').single(),
      supabase.from('writing_attempts').insert({
        user_id: user.id, prompt_id: task2Prompt?.id, task_type: 'task2',
        essay: essay2, word_count: wc2, duration_seconds: elapsed,
      }).select('id').single(),
    ])

    if (!t1Att && !t2Att) {
      setSubmitting(false)
      alert('Could not save your responses. Please try again.')
      if (!timeUp) timerRef.current = setInterval(() => setSeconds(s => (s > 0 ? s - 1 : 0)), 1000)
      return
    }

    await supabase.from('full_test_sessions').update({
      task1_attempt_id: t1Att?.id ?? null,
      task2_attempt_id: t2Att?.id ?? null,
      duration_seconds: elapsed,
    }).eq('id', sessionId)

    navigate(`/writing/full-test/results/${sessionId}`, {
      state: { task1AnnotationDataUrl: annotDataUrl, task1ChartUrl, promptTitle: task1Prompt?.title },
    })
  }

  // ── Auto-submit on time-up ─────────────────────────────────────────────────
  useEffect(() => {
    if (!timeUp || hasAutoSubmitted.current) return
    hasAutoSubmitted.current = true
    submitFullTest(task1EssayRef.current, task2EssayRef.current)
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [timeUp])

  if (loading) return <div className="exam-loading" aria-live="polite">Loading full test…</div>
  if (loadError) return (
    <div className="exam-error" role="alert">
      <p>{loadError}</p>
      <button className="btn btn-primary" onClick={() => navigate('/writing')}>Back to Writing</button>
    </div>
  )

  return (
    <div className="exam-layout wft-layout">

      {/* ── Header ── */}
      <header className="exam-header">
        <div className="exam-header-left">
          <span className="exam-logo">CDI Practice</span>
          <span className="exam-badge">Full Test</span>
        </div>

        <div
          className={`wt2-timer${timerWarning ? ' wt2-timer-warn' : ''}${timerDanger ? ' wt2-timer-danger' : ''}`}
          aria-live="off"
          aria-label="Time remaining"
        >
          <span className="wt2-timer-label">Time left</span>
          <span className="wt2-timer-value">{formatTime(seconds)}</span>
        </div>

        <div className="exam-header-right">
          <ThemeToggle />
          <button
            className="btn exam-submit-btn"
            onClick={() => setShowConfirm(true)}
            disabled={submitting || timeUp}
          >
            {submitting ? 'Submitting…' : 'Submit Full Test →'}
          </button>
        </div>
      </header>

      {/* ── Time's up banner ── */}
      {timeUp && (
        <div className="wt2-timeup-banner" role="alert" aria-live="assertive">
          ⏰ Time's up — submitting your test…
        </div>
      )}

      {/* ── Task tab switcher ── */}
      <div className="wft-tab-bar" role="tablist">
        <button
          role="tab"
          aria-selected={activeTab === 'task1'}
          className={`wft-tab ${activeTab === 'task1' ? 'wft-tab-active' : ''}`}
          onClick={() => setActiveTab('task1')}
        >
          Task 1 — Chart
          {task1WordCount > 0 && (
            <span className={`wft-tab-wc ${wcClass(task1WordCount, task1MinWords)}`}>
              {task1WordCount}w
            </span>
          )}
        </button>
        <button
          role="tab"
          aria-selected={activeTab === 'task2'}
          className={`wft-tab ${activeTab === 'task2' ? 'wft-tab-active' : ''}`}
          onClick={() => setActiveTab('task2')}
        >
          Task 2 — Essay
          {task2WordCount > 0 && (
            <span className={`wft-tab-wc ${wcClass(task2WordCount, task2MinWords)}`}>
              {task2WordCount}w
            </span>
          )}
        </button>
      </div>

      {/* ── Task 1 body — always mounted, display toggled to preserve canvas ── */}
      <div
        className="exam-body wt1-body"
        style={{ display: activeTab === 'task1' ? 'flex' : 'none' }}
        role="tabpanel"
        aria-hidden={activeTab !== 'task1'}
      >
        <div className="wt1-chart-col">
          <div className="wt1-chart-inner">
            <div className="wt1-chart-topbar">
              <span className="wt1-chart-heading">Chart</span>
              {task1ChartUrl && (
                <button className="wt1-fullscreen-btn" onClick={() => setShowFullscreen(true)}>
                  ⛶ Fullscreen
                </button>
              )}
            </div>
            {task1ChartUrl ? (
              <AnnotationCanvas
                canvasRef={annotCanvasRef}
                chartImgRef={chartImgRef}
                onImageLoad={() => {}}
              />
            ) : (
              <div className="wt1-no-chart"><p>No chart available.</p></div>
            )}

            <div className="exam-notes">
              <span className="exam-notes-label">Notes</span>
              <textarea
                className="exam-notes-area"
                value={notes1}
                onChange={e => setNotes1(e.target.value)}
                placeholder="Jot down key data points, vocabulary, or planning notes…"
                aria-label="Task 1 scratch pad"
                spellCheck={false}
                disabled={submitting || timeUp}
              />
            </div>
          </div>
        </div>

        <div className="wt1-editor-col">
          <div className="wt1-prompt-box">
            <p className="wt1-prompt-text">{task1Prompt?.prompt}</p>
          </div>
          <textarea
            className="wt1-textarea"
            value={task1Essay}
            onChange={e => setTask1Essay(e.target.value)}
            placeholder="Write your Task 1 response here…"
            aria-label="Task 1 response"
            spellCheck
            disabled={submitting || timeUp}
          />
          <div className="wt1-wordcount-bar">
            <span className={`wt1-wordcount-num ${wcClass(task1WordCount, task1MinWords)}`}>
              {task1WordCount} {task1WordCount === 1 ? 'word' : 'words'}
            </span>
            <span className="wt1-wordcount-min">minimum {task1MinWords}</span>
            {task1WordCount >= task1MinWords && <span className="wt1-wordcount-ok">✓ Good length</span>}
          </div>
        </div>
      </div>

      {/* ── Task 2 body — always mounted, display toggled ── */}
      <div
        className="exam-body wt2-body"
        style={{ display: activeTab === 'task2' ? 'flex' : 'none' }}
        role="tabpanel"
        aria-hidden={activeTab !== 'task2'}
      >
        <div className="wt2-question-col">
          <div className="wt2-question-inner">
            <div className="wt2-task-instructions">
              <p>Write about the following topic.</p>
              <p>Give reasons for your answer and include any relevant examples from your own knowledge or experience.</p>
              <p>Write at least <strong>{task2MinWords} words</strong>.</p>
            </div>
            <div className="wt2-question-box">
              <p className="wt2-question-text">{task2Prompt?.prompt}</p>
            </div>

            <div className="exam-notes">
              <span className="exam-notes-label">Notes</span>
              <textarea
                className="exam-notes-area"
                value={notes2}
                onChange={e => setNotes2(e.target.value)}
                placeholder="Plan your essay — brainstorm ideas, key points, conclusion…"
                aria-label="Task 2 scratch pad"
                spellCheck={false}
                disabled={submitting || timeUp}
              />
            </div>
          </div>
        </div>

        <div className="wt2-editor-col">
          <textarea
            className="wt2-textarea"
            value={task2Essay}
            onChange={e => setTask2Essay(e.target.value)}
            placeholder="Write your Task 2 essay here…"
            aria-label="Task 2 essay"
            spellCheck
            disabled={submitting || timeUp}
          />
          <div className="wt2-wordcount-bar">
            <span className={`wt2-wordcount-num ${wcClass(task2WordCount, task2MinWords)}`}>
              {task2WordCount} {task2WordCount === 1 ? 'word' : 'words'}
            </span>
            <span className="wt2-wordcount-min">minimum {task2MinWords}</span>
            {task2WordCount >= task2MinWords && <span className="wt2-wordcount-ok">✓ Good length</span>}
          </div>
        </div>
      </div>

      {/* ── Fullscreen chart overlay ── */}
      {showFullscreen && task1ChartUrl && (
        <FullscreenOverlay src={task1ChartUrl} onClose={() => setShowFullscreen(false)} />
      )}

      {/* ── Submit confirmation modal ── */}
      {showConfirm && (
        <div className="modal-backdrop" onClick={() => setShowConfirm(false)}>
          <div className="modal-box" onClick={e => e.stopPropagation()}>
            <h2 className="modal-title">Submit Full Test?</h2>
            <div className="modal-body">
              <p>
                Task 1: <strong>{task1WordCount} words</strong>
                {task1WordCount < task1MinWords && (
                  <span className="wt1-warn-words"> (below {task1MinWords}-word minimum)</span>
                )}
              </p>
              <p>
                Task 2: <strong>{task2WordCount} words</strong>
                {task2WordCount < task2MinWords && (
                  <span className="wt1-warn-words"> (below {task2MinWords}-word minimum)</span>
                )}
              </p>
              <p>Time remaining: <strong>{formatTime(seconds)}</strong></p>
              <p>Once submitted you cannot edit your responses.</p>
            </div>
            <div className="modal-actions">
              <button className="btn btn-outline" onClick={() => setShowConfirm(false)}>
                Continue writing
              </button>
              <button
                className="btn btn-primary"
                onClick={() => submitFullTest()}
                disabled={submitting}
              >
                {submitting ? 'Saving…' : 'Submit Full Test →'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
