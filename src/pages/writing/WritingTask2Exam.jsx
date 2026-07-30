import { useEffect, useRef, useState, useMemo } from 'react'
import { useParams, useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { ThemeToggle } from '../../components/ThemeToggle'
import '../reading/ReadingExam.css'
import './WritingTask2Exam.css'

const TASK2_DURATION = 40 * 60  // 2400 seconds

function formatTime(s) {
  const m = Math.floor(s / 60)
  const sec = s % 60
  return `${String(m).padStart(2, '0')}:${String(sec).padStart(2, '0')}`
}

function countWords(text) {
  const t = text.trim()
  return t === '' ? 0 : t.split(/\s+/).length
}

export default function WritingTask2Exam() {
  const { promptId } = useParams()
  const navigate     = useNavigate()
  const { user }     = useAuth()

  const [prompt,      setPrompt]      = useState(null)
  const [loading,     setLoading]     = useState(true)
  const [loadError,   setLoadError]   = useState('')
  const [essay,       setEssay]       = useState('')
  const [seconds,     setSeconds]     = useState(TASK2_DURATION)
  const [showConfirm, setShowConfirm] = useState(false)
  const [submitting,  setSubmitting]  = useState(false)
  const [timeUp,      setTimeUp]      = useState(false)
  const [notes,       setNotes]       = useState('')

  const timerRef        = useRef(null)
  const submitRef       = useRef(null)
  const hasAutoSubmitted = useRef(false)

  // Countdown timer
  useEffect(() => {
    timerRef.current = setInterval(() => {
      setSeconds(s => (s > 0 ? s - 1 : 0))
    }, 1000)
    return () => clearInterval(timerRef.current)
  }, [])

  // Detect time-up
  useEffect(() => {
    if (seconds === 0 && !timeUp) setTimeUp(true)
  }, [seconds, timeUp])

  // Load prompt
  useEffect(() => {
    async function load() {
      const { data: p, error: e } = await supabase
        .from('writing_prompts')
        .select('*')
        .eq('id', promptId)
        .single()
      if (e || !p) { setLoadError('Prompt not found.'); setLoading(false); return }
      setPrompt(p)
      setLoading(false)
    }
    load()
  }, [promptId])

  const wordCount = useMemo(() => countWords(essay), [essay])
  const minWords  = prompt?.min_words ?? 250

  const timerWarning = seconds > 0 && seconds < 5 * 60
  const timerDanger  = seconds > 0 && seconds < 60

  const wordCountClass = wordCount >= minWords
    ? 'wc-good'
    : wordCount >= Math.floor(minWords * 0.67)
    ? 'wc-warn'
    : 'wc-low'

  async function submitEssay() {
    if (submitting) return
    setSubmitting(true)
    setShowConfirm(false)
    clearInterval(timerRef.current)

    const elapsed = TASK2_DURATION - seconds

    const { data: attempt, error: err } = await supabase
      .from('writing_attempts')
      .insert({
        user_id:          user.id,
        prompt_id:        promptId,
        task_type:        'task2',
        essay,
        word_count:       wordCount,
        duration_seconds: elapsed,
      })
      .select('id')
      .single()

    if (err || !attempt) {
      setSubmitting(false)
      if (!timeUp) {
        timerRef.current = setInterval(() => setSeconds(s => (s > 0 ? s - 1 : 0)), 1000)
      }
      alert('Could not save your response. Please try again.')
      return
    }

    navigate(`/writing/task2/results/${attempt.id}`, {
      state: { promptTitle: prompt?.title },
    })
  }

  // Keep ref current so auto-submit always uses the latest closure
  submitRef.current = submitEssay

  // Auto-submit when time is up
  useEffect(() => {
    if (!timeUp || !prompt || hasAutoSubmitted.current) return
    hasAutoSubmitted.current = true
    submitRef.current()
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [timeUp, prompt])

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
    <div className="exam-layout wt2-layout">
      {/* ── Header ── */}
      <header className="exam-header">
        <div className="exam-header-left">
          <span className="exam-logo">CDI Practice</span>
          <span className="exam-badge">Writing Task 2</span>
          {prompt?.title && (
            <span className="exam-test-name">{prompt.title}</span>
          )}
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
            {submitting ? 'Submitting…' : 'Submit Task 2 →'}
          </button>
        </div>
      </header>

      {/* ── Time's up banner ── */}
      {timeUp && (
        <div className="wt2-timeup-banner" role="alert" aria-live="assertive">
          ⏰ Time's up — submitting your essay…
        </div>
      )}

      {/* ── Body ── */}
      <div className="exam-body wt2-body">
        {/* Left: question panel */}
        <div className="wt2-question-col">
          <div className="wt2-question-inner">
            <div className="wt2-task-instructions">
              <p>Write about the following topic.</p>
              <p>
                Give reasons for your answer and include any relevant examples
                from your own knowledge or experience.
              </p>
              <p>Write at least <strong>{minWords} words</strong>.</p>
            </div>

            <div className="wt2-question-box">
              <p className="wt2-question-text">{prompt?.prompt}</p>
            </div>

            <div className="exam-notes">
              <span className="exam-notes-label">Notes</span>
              <textarea
                className="exam-notes-area"
                value={notes}
                onChange={e => setNotes(e.target.value)}
                placeholder="Plan your essay — brainstorm ideas, key points, conclusion…"
                aria-label="Scratch pad notes"
                spellCheck={false}
                disabled={submitting || timeUp}
              />
            </div>
          </div>
        </div>

        {/* Right: editor panel */}
        <div className="wt2-editor-col">
          <textarea
            className="wt2-textarea"
            value={essay}
            onChange={e => setEssay(e.target.value)}
            placeholder="Write your essay here…"
            aria-label="Essay response"
            spellCheck
            disabled={submitting || timeUp}
          />

          <div className="wt2-wordcount-bar">
            <span className={`wt2-wordcount-num ${wordCountClass}`}>
              {wordCount} {wordCount === 1 ? 'word' : 'words'}
            </span>
            <span className="wt2-wordcount-min">minimum {minWords}</span>
            {wordCount >= minWords && (
              <span className="wt2-wordcount-ok">✓ Good length</span>
            )}
          </div>
        </div>
      </div>

      {/* ── Submit confirmation modal ── */}
      {showConfirm && (
        <div className="modal-backdrop" onClick={() => setShowConfirm(false)}>
          <div className="modal-box" onClick={e => e.stopPropagation()}>
            <h2 className="modal-title">Submit Task 2?</h2>
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
              <p>Time remaining: <strong>{formatTime(seconds)}</strong></p>
              <p>Once submitted you cannot return to edit your response.</p>
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
