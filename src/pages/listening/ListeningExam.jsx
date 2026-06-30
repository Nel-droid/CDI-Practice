import { useEffect, useState, useRef, useCallback } from 'react'
import { useParams, useSearchParams, useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { scoreModule } from '../../lib/marking/index'
import { warnIfMisaligned } from '../../lib/marking/validateTest'
import '../reading/ReadingExam.css'
import './ListeningExam.css'

// ── Helpers ────────────────────────────────────────────────────────────────

function fmtTime(seconds) {
  const m = Math.floor(Math.max(0, seconds) / 60)
  const s = Math.max(0, seconds) % 60
  return `${String(m).padStart(2, '0')}:${String(s).padStart(2, '0')}`
}

function isAnswered(response) {
  if (response == null) return false
  if (Array.isArray(response)) return response.length > 0
  return String(response).trim().length > 0
}

function allQuestions(test) {
  const qs = []
  const sections = test.sections ?? []
  for (const sec of sections) {
    for (const grp of sec.groups ?? []) {
      for (const q of grp.questions ?? []) {
        qs.push({ ...q, sectionId: sec.id, sectionIndex: sections.indexOf(sec), group: grp })
      }
    }
  }
  return qs
}

// ── Question renderers ─────────────────────────────────────────────────────

function FlagBtn({ number, flagged, onFlag }) {
  const active = flagged.has(number)
  return (
    <button
      className={`flag-btn ${active ? 'flagged' : ''}`}
      onClick={() => onFlag(number)}
      aria-pressed={active}
      title={active ? 'Remove flag' : 'Flag for review'}
    >
      {active ? '⚑ Flagged' : '⚐ Flag'}
    </button>
  )
}

function QuestionHeader({ number, flagged, onFlag }) {
  return (
    <div className="q-header">
      <span className="q-number">{number}</span>
      <FlagBtn number={number} flagged={flagged} onFlag={onFlag} />
    </div>
  )
}

function TFNGQuestion({ q, opts, response, onRespond, flagged, onFlag }) {
  return (
    <div className="question-item" id={`q${q.number}`}>
      <QuestionHeader number={q.number} flagged={flagged} onFlag={onFlag} />
      <p className="q-prompt">{q.prompt}</p>
      <div className="choice-buttons" role="group" aria-label={`Answer for question ${q.number}`}>
        {opts.map(opt => (
          <button
            key={opt}
            className={`choice-btn ${response === opt ? 'selected' : ''}`}
            onClick={() => onRespond(q.number, response === opt ? null : opt)}
            aria-pressed={response === opt}
          >
            {opt}
          </button>
        ))}
      </div>
    </div>
  )
}

function MCQQuestion({ q, response, onRespond, flagged, onFlag }) {
  return (
    <div className="question-item" id={`q${q.number}`}>
      <QuestionHeader number={q.number} flagged={flagged} onFlag={onFlag} />
      <p className="q-prompt">{q.prompt}</p>
      <div className="radio-options" role="radiogroup" aria-label={`Answer for question ${q.number}`}>
        {q.options?.map(opt => (
          <label key={opt.key} className={`radio-option ${response === opt.key ? 'selected' : ''}`}>
            <input
              type="radio"
              name={`q${q.number}`}
              value={opt.key}
              checked={response === opt.key}
              onChange={() => onRespond(q.number, opt.key)}
            />
            <span className="opt-key">{opt.key}</span>
            <span className="opt-text">{opt.text}</span>
          </label>
        ))}
      </div>
    </div>
  )
}

function MatchingQuestion({ q, group, response, onRespond, flagged, onFlag }) {
  return (
    <div className="question-item" id={`q${q.number}`}>
      <QuestionHeader number={q.number} flagged={flagged} onFlag={onFlag} />
      <p className="q-prompt">{q.prompt}</p>
      <select
        className="matching-select"
        value={response ?? ''}
        onChange={e => onRespond(q.number, e.target.value || null)}
        aria-label={`Answer for question ${q.number}`}
      >
        <option value="">— Choose —</option>
        {group.options?.map(opt => (
          <option key={opt.key} value={opt.key}>
            {opt.text !== opt.key ? `${opt.key}. ${opt.text}` : opt.key}
          </option>
        ))}
      </select>
    </div>
  )
}

// Listening-specific: word-limit hint says "from what you hear", not "from the passage"
function TextQuestion({ q, response, onRespond, flagged, onFlag }) {
  return (
    <div className="question-item" id={`q${q.number}`}>
      <QuestionHeader number={q.number} flagged={flagged} onFlag={onFlag} />
      <p className="q-prompt">{q.prompt}</p>
      {q.wordLimit && (
        <p className="q-hint">
          No more than {q.wordLimit} word{q.wordLimit > 1 ? 's' : ''} from what you hear
        </p>
      )}
      <input
        type="text"
        className="text-answer"
        value={response ?? ''}
        onChange={e => onRespond(q.number, e.target.value)}
        placeholder="Your answer…"
        aria-label={`Answer for question ${q.number}`}
      />
    </div>
  )
}

function QuestionItem({ q, response, onRespond, flagged, onFlag }) {
  const { group } = q
  const type = group.type
  if (type === 'true_false_notgiven') {
    return <TFNGQuestion q={q} opts={['TRUE', 'FALSE', 'NOT GIVEN']} response={response} onRespond={onRespond} flagged={flagged} onFlag={onFlag} />
  }
  if (type === 'yes_no_notgiven') {
    return <TFNGQuestion q={q} opts={['YES', 'NO', 'NOT GIVEN']} response={response} onRespond={onRespond} flagged={flagged} onFlag={onFlag} />
  }
  if (type === 'multiple_choice') {
    return <MCQQuestion q={q} response={response} onRespond={onRespond} flagged={flagged} onFlag={onFlag} />
  }
  if (type === 'matching') {
    return <MatchingQuestion q={q} group={group} response={response} onRespond={onRespond} flagged={flagged} onFlag={onFlag} />
  }
  if (type === 'completion' || type === 'short_answer') {
    return <TextQuestion q={q} response={response} onRespond={onRespond} flagged={flagged} onFlag={onFlag} />
  }
  return null
}

// ── Questions panel ────────────────────────────────────────────────────────

function QuestionsPanel({ section, responses, flagged, onRespond, onFlag }) {
  return (
    <div className="questions-panel">
      {section.groups?.map((group, gi) => {
        // Only show the options box when options carry meaningful text (not just "A", "B"...)
        const hasDescriptiveOptions = group.options?.some(opt => opt.text !== opt.key)

        return (
          <div key={gi} className="question-group">
            {group.instructions && (
              <div className="group-instructions">
                {group.type === 'matching' && hasDescriptiveOptions && (
                  <div className="matching-options-box">
                    <p className="matching-options-label">Options</p>
                    <ul className="matching-options-list">
                      {group.options.map(opt => (
                        <li key={opt.key} className="matching-option-item">
                          <span className="opt-key">{opt.key}.</span> {opt.text}
                        </li>
                      ))}
                    </ul>
                  </div>
                )}
                <p className="group-inst-text">{group.instructions}</p>
              </div>
            )}
            {group.formTitle && (
              <p className="group-form-title">{group.formTitle}</p>
            )}
            {group.questions?.map(q => (
              <QuestionItem
                key={q.number}
                q={{ ...q, group }}
                response={responses[q.number]}
                onRespond={onRespond}
                flagged={flagged}
                onFlag={onFlag}
              />
            ))}
          </div>
        )
      })}
    </div>
  )
}

// ── Audio panel (left column) ──────────────────────────────────────────────

function AudioPanel({ sections, currentPartIdx, audioElapsed, audioDuration, audioComplete, autoplayBlocked, onStartAudio }) {
  const pct = audioDuration > 0 ? Math.min(100, (audioElapsed / audioDuration) * 100) : 0

  return (
    <div className="audio-panel">
      <div className="audio-part-heading">
        {audioComplete
          ? <span className="audio-badge audio-badge--done">✓ Audio complete</span>
          : <span className="audio-badge audio-badge--playing">▶ Part {currentPartIdx + 1} of {sections.length}</span>
        }
      </div>

      {/* Non-interactive progress bar — pointer-events: none in CSS */}
      <div className="audio-track" aria-hidden="true">
        <div className="audio-track-fill" style={{ width: `${pct}%` }} />
      </div>
      <div className="audio-time-row" aria-hidden="true">
        <span>{fmtTime(Math.floor(audioElapsed))}</span>
        <span>{audioDuration > 0 ? fmtTime(Math.floor(audioDuration)) : '--:--'}</span>
      </div>

      {/* Fallback button — only shown if browser blocked autoplay */}
      {autoplayBlocked && (
        <button className="btn btn-primary audio-start-btn" onClick={onStartAudio}>
          ▶ Start audio
        </button>
      )}

      <p className="audio-rule-note">
        Audio plays once only. Pause, rewind, and replay are not available during the test.
      </p>

      <div className="audio-parts-list" aria-hidden="true">
        {sections.map((sec, i) => (
          <div
            key={sec.id}
            className={`audio-part-item${i === currentPartIdx && !audioComplete ? ' current' : ''}${i < currentPartIdx || audioComplete ? ' done' : ''}`}
          >
            {i < currentPartIdx || audioComplete ? '✓' : i === currentPartIdx ? '▶' : '○'} {sec.title}
          </div>
        ))}
      </div>
    </div>
  )
}

// ── Main component ─────────────────────────────────────────────────────────

export default function ListeningExam() {
  const { testId } = useParams()
  const [searchParams] = useSearchParams()
  const attemptId = searchParams.get('attempt')
  const { user } = useAuth()
  const navigate = useNavigate()

  const [test, setTest] = useState(null)
  const [loadError, setLoadError] = useState('')
  const [responses, setResponses] = useState({})
  const [flagged, setFlagged] = useState(new Set())
  const [activeSection, setActiveSection] = useState(0)
  const [timeLeft, setTimeLeft] = useState(null)
  const [submitting, setSubmitting] = useState(false)
  const [showConfirm, setShowConfirm] = useState(false)

  // Audio state
  const [currentPartIdx, setCurrentPartIdx] = useState(0)
  const [audioSrc, setAudioSrc] = useState(null)
  const [audioElapsed, setAudioElapsed] = useState(0)
  const [audioDuration, setAudioDuration] = useState(0)
  const [audioComplete, setAudioComplete] = useState(false)
  const [autoplayBlocked, setAutoplayBlocked] = useState(false)

  const audioRef = useRef(null)
  // furthestRef tracks the highest currentTime reached — used to block rewind
  const furthestRef = useRef(0)
  const startedAtRef = useRef(null)
  const submittedRef = useRef(false)

  // Keep a ref so the onEnded handler always sees fresh state without stale closures
  const audioStateRef = useRef({ currentPartIdx: 0, sections: [] })
  useEffect(() => {
    audioStateRef.current = { currentPartIdx, sections: test?.sections ?? [] }
  })

  // ── Load test ──────────────────────────────────────────────────────────
  useEffect(() => {
    supabase
      .from('tests')
      .select('content, duration_seconds, published, test_label')
      .eq('id', testId)
      .single()
      .then(({ data, error }) => {
        if (error || !data) { setLoadError('Test not found.'); return }
        setTest(data.content)
        setTimeLeft(data.duration_seconds)
        startedAtRef.current = Date.now()
        warnIfMisaligned(data)
      })
  }, [testId])

  // ── Fetch signed URL when part changes ────────────────────────────────
  //
  // audioPath is stored as "Part 1.mp3" (capital P, space).
  // supabase.storage.createSignedUrl() passes the path in the JSON request
  // body — the JS client handles spaces in the string without manual encoding.
  // The returned signedUrl from Supabase is already properly URL-encoded.
  useEffect(() => {
    if (!test) return
    const sections = test.sections ?? []
    if (currentPartIdx >= sections.length) return
    const path = sections[currentPartIdx].audioPath
    supabase.storage
      .from('listening-audio')
      .createSignedUrl(path, 3600)
      .then(({ data, error }) => {
        if (error || !data?.signedUrl) {
          console.error('[CDI] Audio signed URL fetch failed:', error)
          return
        }
        setAudioSrc(data.signedUrl)
      })
  }, [test, currentPartIdx])

  // ── Play when signed URL arrives ──────────────────────────────────────
  useEffect(() => {
    const audio = audioRef.current
    if (!audioSrc || !audio) return
    furthestRef.current = 0
    setAudioElapsed(0)
    setAudioDuration(0)
    setAutoplayBlocked(false)
    // Set src imperatively so we can call .load() and .play() in sequence
    audio.src = audioSrc
    audio.load()
    audio.play().catch(() => {
      // Browser blocked autoplay — show manual Start button
      setAutoplayBlocked(true)
    })
  }, [audioSrc])

  // ── Audio event handlers ───────────────────────────────────────────────

  function handleTimeUpdate() {
    const audio = audioRef.current
    if (!audio) return
    const t = audio.currentTime
    setAudioElapsed(t)
    // Keep furthestRef at the highest point naturally reached
    if (t > furthestRef.current) furthestRef.current = t
  }

  // Prevent rewind via any means: keyboard shortcuts on a focused element,
  // or programmatic `audio.currentTime = 0` via dev-tools console.
  // The <audio> has no `controls` attribute so it cannot be focused or
  // interacted with through normal browser UI. This handler is a final
  // safeguard: if currentTime drops more than 2s behind the furthest
  // point reached, snap it back forward.
  function handleSeeking() {
    const audio = audioRef.current
    if (!audio) return
    if (audio.currentTime < furthestRef.current - 2) {
      audio.currentTime = furthestRef.current
    }
  }

  function handleLoadedMetadata() {
    const audio = audioRef.current
    if (audio && isFinite(audio.duration)) setAudioDuration(audio.duration)
  }

  function handlePartEnded() {
    const { currentPartIdx: idx, sections } = audioStateRef.current
    const next = idx + 1
    if (next < sections.length) {
      setCurrentPartIdx(next)
      setActiveSection(next)
    } else {
      setAudioComplete(true)
    }
  }

  function startAudio() {
    audioRef.current?.play().then(() => setAutoplayBlocked(false)).catch(() => {})
  }

  // ── Submit ─────────────────────────────────────────────────────────────
  const submitRef = useRef(null)
  const handleSubmit = useCallback(async () => {
    if (submittedRef.current || !test) return
    submittedRef.current = true
    setSubmitting(true)
    setShowConfirm(false)

    const result = scoreModule(test, responses)
    const elapsed = Math.round((Date.now() - startedAtRef.current) / 1000)

    await supabase.from('attempts').update({
      submitted_at: new Date().toISOString(),
      duration_seconds: elapsed,
      raw_score: result.raw,
      band: result.band,
      responses,
      marked: {
        raw: result.raw,
        total: result.total,
        band: result.band,
        perQuestion: result.perQuestion,
      },
    }).eq('id', attemptId)

    supabase
      .from('profiles')
      .update({ last_active_at: new Date().toISOString() })
      .eq('id', user.id)
      .then(({ error }) => {
        if (error) console.warn('last_active_at update skipped:', error.message)
      })

    navigate(`/listening/results/${attemptId}`)
  }, [test, responses, attemptId, user, navigate])

  useEffect(() => { submitRef.current = handleSubmit }, [handleSubmit])

  // ── Countdown timer ────────────────────────────────────────────────────
  useEffect(() => {
    if (timeLeft === null || submittedRef.current) return
    if (timeLeft <= 0) { submitRef.current?.(); return }
    const id = setTimeout(() => setTimeLeft(t => t - 1), 1000)
    return () => clearTimeout(id)
  }, [timeLeft])

  function scrollToQuestion(num) {
    document.getElementById(`q${num}`)?.scrollIntoView({ behavior: 'smooth', block: 'center' })
  }

  function onRespond(num, val) { setResponses(r => ({ ...r, [num]: val })) }

  function onFlag(num) {
    setFlagged(prev => {
      const next = new Set(prev)
      next.has(num) ? next.delete(num) : next.add(num)
      return next
    })
  }

  if (loadError) {
    return (
      <div className="exam-error">
        <p>{loadError}</p>
        <button className="btn btn-primary" onClick={() => navigate('/listening')}>Back to Listening</button>
      </div>
    )
  }

  if (!test) {
    return <div className="exam-loading" aria-live="polite">Loading test…</div>
  }

  const sections = test.sections ?? []
  const currentSection = sections[activeSection] ?? sections[0]
  const questions = allQuestions(test)
  const answeredCount = questions.filter(q => isAnswered(responses[q.number])).length
  const urgent  = timeLeft !== null && timeLeft <= 300
  const warning = timeLeft !== null && timeLeft <= 600 && timeLeft > 300

  return (
    <div className="exam-layout">

      {/*
        Hidden audio element — NO controls attribute.
        Without controls:
          • The element renders with zero visual size — no browser UI is shown
          • It cannot receive keyboard focus via Tab traversal
          • Right-click shows nothing (element has no rendered bounds)
          • Media-key shortcuts (Space, arrow keys) only fire on a focused
            element; without controls the audio element is not focusable
          • Remote playback (AirPlay, Cast) is disabled via disableRemotePlayback
        The onSeeking handler (above) is the last line of defence against
        programmatic rewind via dev-tools console.
      */}
      <audio
        ref={audioRef}
        onTimeUpdate={handleTimeUpdate}
        onSeeking={handleSeeking}
        onEnded={handlePartEnded}
        onLoadedMetadata={handleLoadedMetadata}
        aria-hidden="true"
        tabIndex={-1}
        disableRemotePlayback
      />

      {/* ── Header ── */}
      <header className="exam-header">
        <div className="exam-header-left">
          <span className="exam-logo">CDI Practice</span>
          <span className="exam-test-name">Listening · {test.testLabel ?? 'Test'}</span>
        </div>
        <div
          className={`exam-timer ${urgent ? 'urgent' : warning ? 'warning' : ''}`}
          aria-live="off"
          aria-label={`Time remaining: ${fmtTime(timeLeft ?? 0)}`}
        >
          ⏱ {fmtTime(timeLeft ?? 0)}
        </div>
        <div className="exam-header-right">
          <span className="exam-progress">{answeredCount}/{questions.length} answered</span>
        </div>
      </header>

      {/* ── Part tabs ── */}
      <nav className="exam-section-tabs" aria-label="Parts">
        {sections.map((sec, i) => (
          <button
            key={sec.id}
            className={`section-tab ${activeSection === i ? 'active' : ''}`}
            onClick={() => setActiveSection(i)}
            aria-current={activeSection === i ? 'page' : undefined}
          >
            {sec.title}
          </button>
        ))}
      </nav>

      {/* ── Body ── */}
      <div className="exam-body">
        {/* Left: audio info panel */}
        <div className="exam-audio-col">
          <AudioPanel
            sections={sections}
            currentPartIdx={currentPartIdx}
            audioElapsed={audioElapsed}
            audioDuration={audioDuration}
            audioComplete={audioComplete}
            autoplayBlocked={autoplayBlocked}
            onStartAudio={startAudio}
          />
        </div>

        {/* Right: questions */}
        <div className="exam-questions-col">
          <QuestionsPanel
            section={currentSection}
            responses={responses}
            flagged={flagged}
            onRespond={onRespond}
            onFlag={onFlag}
          />
        </div>
      </div>

      {/* ── Footer ── */}
      <footer className="exam-footer">
        <div className="exam-palette-wrap">
          <nav className="exam-palette" aria-label="Question navigation">
            {questions.map(q => {
              const ans = isAnswered(responses[q.number])
              const fl  = flagged.has(q.number)
              return (
                <button
                  key={q.number}
                  className={`palette-btn ${ans ? 'answered' : ''} ${fl ? 'flagged' : ''}`}
                  onClick={() => {
                    if (q.sectionIndex !== activeSection) setActiveSection(q.sectionIndex)
                    setTimeout(() => scrollToQuestion(q.number), 80)
                  }}
                  title={`Question ${q.number}${ans ? ' (answered)' : ''}${fl ? ' (flagged)' : ''}`}
                  aria-label={`Go to question ${q.number}`}
                >
                  {q.number}
                </button>
              )
            })}
          </nav>
        </div>

        <div className="exam-footer-actions">
          <div className="palette-legend">
            <span className="legend-dot answered" /> Answered
            <span className="legend-dot flagged" /> Flagged
            <span className="legend-dot unanswered" /> Unanswered
          </div>
          <button
            className="btn btn-primary exam-submit-btn"
            onClick={() => setShowConfirm(true)}
            disabled={submitting}
          >
            {submitting ? 'Submitting…' : 'Submit test'}
          </button>
        </div>
      </footer>

      {/* ── Submit confirmation ── */}
      {showConfirm && (
        <div className="modal-backdrop" role="dialog" aria-modal="true" aria-labelledby="confirm-title">
          <div className="modal-box">
            <h2 id="confirm-title" className="modal-title">Submit your test?</h2>
            <p className="modal-body">
              You have answered <strong>{answeredCount}</strong> of{' '}
              <strong>{questions.length}</strong> questions.
              {questions.length - answeredCount > 0 && (
                <> <strong>{questions.length - answeredCount}</strong> are still unanswered.</>
              )}
              <br />You cannot change your answers after submitting.
            </p>
            <div className="modal-actions">
              <button className="btn btn-outline" onClick={() => setShowConfirm(false)} autoFocus>
                Go back
              </button>
              <button className="btn btn-primary" onClick={handleSubmit} disabled={submitting}>
                {submitting ? 'Submitting…' : 'Yes, submit'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
