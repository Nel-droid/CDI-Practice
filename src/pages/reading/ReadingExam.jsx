import { useEffect, useState, useRef, useCallback } from 'react'
import { useParams, useSearchParams, useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { scoreModule } from '../../lib/marking/index'
import './ReadingExam.css'

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

// Collect every question in order from the test sections
function allQuestions(test) {
  const qs = []
  for (const sec of test.sections ?? []) {
    for (const grp of sec.groups ?? []) {
      for (const q of grp.questions ?? []) {
        qs.push({ ...q, sectionId: sec.id, sectionIndex: test.sections.indexOf(sec), group: grp })
      }
    }
  }
  return qs
}

// ── Passage panel ──────────────────────────────────────────────────────────

function PassagePanel({ section }) {
  return (
    <div className="passage-panel">
      <h2 className="passage-section-title">{section.title}</h2>
      {section.passage?.map(para => (
        <div key={para.ref} className="passage-paragraph" id={`para-${section.id}-${para.ref}`}>
          <span className="para-ref" aria-label={`Paragraph ${para.ref}`}>{para.ref}</span>
          <span className="para-text">{para.text}</span>
        </div>
      ))}
    </div>
  )
}

// ── Individual question renderers ──────────────────────────────────────────

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

function MCQMultiQuestion({ q, group, response, onRespond, flagged, onFlag }) {
  const current = Array.isArray(response) ? response : []
  const max = Array.isArray(q.answer) ? q.answer.length : 2

  function toggle(key) {
    if (current.includes(key)) {
      onRespond(q.number, current.filter(k => k !== key))
    } else if (current.length < max) {
      onRespond(q.number, [...current, key])
    }
  }

  return (
    <div className="question-item" id={`q${q.number}`}>
      <QuestionHeader number={q.number} flagged={flagged} onFlag={onFlag} />
      <p className="q-prompt">{q.prompt}</p>
      <p className="q-hint">Select {max} answers. ({current.length}/{max} chosen)</p>
      <div className="checkbox-options" role="group" aria-label={`Answer for question ${q.number}`}>
        {group.options?.map(opt => (
          <label key={opt.key} className={`checkbox-option ${current.includes(opt.key) ? 'selected' : ''} ${!current.includes(opt.key) && current.length >= max ? 'disabled' : ''}`}>
            <input
              type="checkbox"
              checked={current.includes(opt.key)}
              onChange={() => toggle(opt.key)}
              disabled={!current.includes(opt.key) && current.length >= max}
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
        aria-label={`Heading for ${q.prompt}`}
      >
        <option value="">— Choose a heading —</option>
        {group.options?.map(opt => (
          <option key={opt.key} value={opt.key}>{opt.key}. {opt.text}</option>
        ))}
      </select>
    </div>
  )
}

function TextQuestion({ q, response, onRespond, flagged, onFlag }) {
  return (
    <div className="question-item" id={`q${q.number}`}>
      <QuestionHeader number={q.number} flagged={flagged} onFlag={onFlag} />
      <p className="q-prompt">{q.prompt}</p>
      {q.wordLimit && (
        <p className="q-hint">No more than {q.wordLimit} word{q.wordLimit > 1 ? 's' : ''} from the passage</p>
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
  if (type === 'multiple_choice_multi') {
    return <MCQMultiQuestion q={q} group={group} response={response} onRespond={onRespond} flagged={flagged} onFlag={onFlag} />
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
      {section.groups?.map((group, gi) => (
        <div key={gi} className="question-group">
          {group.instructions && (
            <div className="group-instructions">
              {group.type === 'matching' && group.options && (
                <div className="matching-options-box">
                  <p className="matching-options-label">List of Headings</p>
                  <ol className="matching-options-list">
                    {group.options.map(opt => (
                      <li key={opt.key} value={opt.key} className="matching-option-item">
                        <span className="opt-key">{opt.key}.</span> {opt.text}
                      </li>
                    ))}
                  </ol>
                </div>
              )}
              {group.type === 'multiple_choice_multi' && group.options && (
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
      ))}
    </div>
  )
}

// ── Main component ─────────────────────────────────────────────────────────

export default function ReadingExam() {
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
  const startedAtRef = useRef(null)
  const submittedRef = useRef(false)
  const questionsRef = useRef(null)

  // Load test
  useEffect(() => {
    supabase
      .from('tests')
      .select('content, duration_seconds')
      .eq('id', testId)
      .single()
      .then(({ data, error }) => {
        if (error || !data) { setLoadError('Test not found.'); return }
        setTest(data.content)
        setTimeLeft(data.duration_seconds)
        startedAtRef.current = Date.now()
      })
  }, [testId])

  // Submit handler — stable via ref
  const submitRef = useRef(null)
  const handleSubmit = useCallback(async (auto = false) => {
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

    await supabase
      .from('profiles')
      .update({ last_active_at: new Date().toISOString() })
      .eq('id', user.id)

    navigate(`/reading/results/${attemptId}`)
  }, [test, responses, attemptId, user, navigate])

  useEffect(() => { submitRef.current = handleSubmit }, [handleSubmit])

  // Countdown timer
  useEffect(() => {
    if (timeLeft === null || submittedRef.current) return
    if (timeLeft <= 0) { submitRef.current?.(true); return }
    const id = setTimeout(() => setTimeLeft(t => t - 1), 1000)
    return () => clearTimeout(id)
  }, [timeLeft])

  // Scroll to question
  function scrollToQuestion(num) {
    document.getElementById(`q${num}`)?.scrollIntoView({ behavior: 'smooth', block: 'center' })
  }

  function onRespond(num, val) {
    setResponses(r => ({ ...r, [num]: val }))
  }

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
        <button className="btn btn-primary" onClick={() => navigate('/reading')}>Back to Reading</button>
      </div>
    )
  }

  if (!test) {
    return <div className="exam-loading" aria-live="polite">Loading test…</div>
  }

  const sections = test.sections ?? []
  const currentSection = sections[activeSection]
  const questions = allQuestions(test)
  const answeredCount = questions.filter(q => isAnswered(responses[q.number])).length
  const urgent = timeLeft !== null && timeLeft <= 300  // last 5 min
  const warning = timeLeft !== null && timeLeft <= 600 && timeLeft > 300 // last 10 min

  return (
    <div className="exam-layout">
      {/* ── Header ── */}
      <header className="exam-header">
        <div className="exam-header-left">
          <span className="exam-logo">CDI Practice</span>
          <span className="exam-test-name">Reading · {test.testLabel ?? 'Test'}</span>
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

      {/* ── Section tabs ── */}
      <nav className="exam-section-tabs" aria-label="Passages">
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

      {/* ── Split screen body ── */}
      <div className="exam-body" ref={questionsRef}>
        <div className="exam-passage-col">
          <PassagePanel section={currentSection} />
        </div>
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

      {/* ── Footer: palette + submit ── */}
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
                    const si = q.sectionIndex
                    if (si !== activeSection) setActiveSection(si)
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

      {/* ── Submit confirmation modal ── */}
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
              <button
                className="btn btn-outline"
                onClick={() => setShowConfirm(false)}
                autoFocus
              >
                Go back
              </button>
              <button
                className="btn btn-primary"
                onClick={() => handleSubmit(false)}
                disabled={submitting}
              >
                {submitting ? 'Submitting…' : 'Yes, submit'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
