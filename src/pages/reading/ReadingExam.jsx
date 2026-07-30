import { useEffect, useState, useRef, useCallback } from 'react'
import { useParams, useSearchParams, useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { submitExam } from '../../lib/examApi'
import { useExamPrefs } from '../../lib/useExamPrefs'
import { ThemeToggle } from '../../components/ThemeToggle'
import { HighlightBar } from '../../components/HighlightToolbar'
import { useHighlight } from '../../lib/useHighlight'
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
      {section.heading    && <h3 className="passage-heading">{section.heading}</h3>}
      {section.subheading && <p className="passage-subheading">{section.subheading}</p>}
      {section.passage?.map(para => (
        <div key={para.ref} className="passage-paragraph" id={`para-${section.id}-${para.ref}`}>
          {!/^\d+$/.test(para.ref) && (
            <span className="para-ref" aria-label={`Paragraph ${para.ref}`}>{para.ref}</span>
          )}
          <span className="para-text">{para.text}</span>
        </div>
      ))}
    </div>
  )
}

// ── Individual question renderers ──────────────────────────────────────────

// Maps a T/F/NG or Y/N/NG option to its colour-coded selected state.
function selClass(opt) {
  const v = (opt ?? '').toUpperCase()
  if (v === 'TRUE' || v === 'YES') return 'sel-t'
  if (v === 'FALSE' || v === 'NO') return 'sel-f'
  return 'sel-n'
}

function TFNGQuestion({ q, opts, response, onRespond }) {
  return (
    <div className="question-row" id={`q${q.number}`}>
      <span className="q-num">{q.number}</span>
      <div className="question-row-body">
        <p className="q-prompt">{q.prompt}</p>
        <div className="tfng-btns" role="group" aria-label={`Answer for question ${q.number}`}>
          {opts.map(opt => (
            <button
              key={opt}
              className={`tfng-btn ${response === opt ? `selected ${selClass(opt)}` : ''}`}
              onClick={() => onRespond(q.number, response === opt ? null : opt)}
              aria-pressed={response === opt}
            >
              {opt}
            </button>
          ))}
        </div>
      </div>
    </div>
  )
}

function MCQQuestion({ q, response, onRespond }) {
  return (
    <div className="question-row" id={`q${q.number}`}>
      <span className="q-num">{q.number}</span>
      <div className="question-row-body">
        <p className="q-prompt">{q.prompt}</p>
        <div className="mc-opts" role="radiogroup" aria-label={`Answer for question ${q.number}`}>
          {q.options?.map(opt => (
            <label key={opt.key} className={`mc-opt ${response === opt.key ? 'selected' : ''}`}>
              <input
                type="radio"
                name={`q${q.number}`}
                value={opt.key}
                checked={response === opt.key}
                onChange={() => onRespond(q.number, opt.key)}
              />
              <span className="opt-letter">{opt.key}</span>
              <span className="opt-text">{opt.text}</span>
            </label>
          ))}
        </div>
      </div>
    </div>
  )
}

function MCQMultiQuestion({ q, group, response, onRespond }) {
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
    <div className="question-row" id={`q${q.number}`}>
      <span className="q-num">{q.number}</span>
      <div className="question-row-body">
        <p className="q-prompt">{q.prompt}</p>
        <p className="q-hint">Select {max} answers. ({current.length}/{max} chosen)</p>
        <div className="mc-opts" role="group" aria-label={`Answer for question ${q.number}`}>
          {group.options?.map(opt => (
            <label key={opt.key} className={`mc-opt ${current.includes(opt.key) ? 'selected' : ''} ${!current.includes(opt.key) && current.length >= max ? 'disabled' : ''}`}>
              <input
                type="checkbox"
                checked={current.includes(opt.key)}
                onChange={() => toggle(opt.key)}
                disabled={!current.includes(opt.key) && current.length >= max}
              />
              <span className="opt-letter">{opt.key}</span>
              <span className="opt-text">{opt.text}</span>
            </label>
          ))}
        </div>
      </div>
    </div>
  )
}

function MatchingQuestion({ q, group, response, onRespond }) {
  const label = (q.prompt ?? '').replace(/\s*_______\s*$/, '')
  return (
    <div className="match-row" id={`q${q.number}`}>
      <span className="q-num">{q.number}</span>
      <span className="match-label">{label}</span>
      <select
        className="match-select"
        value={response ?? ''}
        onChange={e => onRespond(q.number, e.target.value || null)}
        aria-label={`Answer for question ${q.number}`}
      >
        <option value="">–</option>
        {group.options?.map(opt => (
          <option key={opt.key} value={opt.key}>{opt.key}</option>
        ))}
      </select>
    </div>
  )
}

function MatchingInlineQuestion({ q, group, response, onRespond }) {
  const parts = (q.prompt ?? '').split('_______')
  const before = parts[0] ?? ''
  const after  = parts.slice(1).join('')
  return (
    <div className="match-row match-row-inline" id={`q${q.number}`}>
      <span className="q-num">{q.number}</span>
      <span className="match-inline-label">
        {before}
        <select
          className="match-gap-select"
          value={response ?? ''}
          onChange={e => onRespond(q.number, e.target.value || null)}
          aria-label={`Answer for question ${q.number}`}
        >
          <option value="">–</option>
          {group.options?.map(opt => (
            <option key={opt.key} value={opt.key}>{opt.key}</option>
          ))}
        </select>
        {after}
      </span>
    </div>
  )
}

function TextQuestion({ q, response, onRespond }) {
  const parts = (q.prompt ?? '').split('_______')
  const hasBlank = parts.length > 1

  if (hasBlank) {
    return (
      <div className="question-row" id={`q${q.number}`}>
        <span className="q-num">{q.number}</span>
        <div className="question-row-body">
          <span className="q-inline-prompt">
            {parts[0]}
            <input
              type="text"
              className="blank-input"
              value={response ?? ''}
              onChange={e => onRespond(q.number, e.target.value)}
              aria-label={`Answer for question ${q.number}`}
              title={q.wordLimit ? `No more than ${q.wordLimit} word${q.wordLimit !== 1 ? 's' : ''}` : undefined}
              placeholder="……"
            />
            {parts.slice(1).join('_______')}
          </span>
          {q.wordLimit && (
            <p className="q-hint">No more than {q.wordLimit} word{q.wordLimit > 1 ? 's' : ''} from the passage</p>
          )}
        </div>
      </div>
    )
  }

  return (
    <div className="question-row" id={`q${q.number}`}>
      <span className="q-num">{q.number}</span>
      <div className="question-row-body">
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
    </div>
  )
}


function QuestionItem({ q, response, onRespond }) {
  const { group } = q
  const type = group.type

  if (type === 'true_false_notgiven') {
    return <TFNGQuestion q={q} opts={['TRUE', 'FALSE', 'NOT GIVEN']} response={response} onRespond={onRespond} />
  }
  if (type === 'yes_no_notgiven') {
    return <TFNGQuestion q={q} opts={['YES', 'NO', 'NOT GIVEN']} response={response} onRespond={onRespond} />
  }
  if (type === 'multiple_choice') {
    return <MCQQuestion q={q} response={response} onRespond={onRespond} />
  }
  if (type === 'multiple_choice_multi') {
    return <MCQMultiQuestion q={q} group={group} response={response} onRespond={onRespond} />
  }
  if (type === 'matching' && group.inlineGap) {
    return <MatchingInlineQuestion q={q} group={group} response={response} onRespond={onRespond} />
  }
  if (type === 'matching') {
    return <MatchingQuestion q={q} group={group} response={response} onRespond={onRespond} />
  }
  if (type === 'completion' || type === 'short_answer') {
    return <TextQuestion q={q} response={response} onRespond={onRespond} />
  }
  return null
}

// ── Summary passage completion ─────────────────────────────────────────────
// Renders a short passage with numbered blanks inline — matches the book layout.

function SummaryCompletionGroup({ group, responses, onRespond }) {
  const text = group.summaryText ?? ''
  const markerRe = /\{(\d+)\}/g
  const parts = []
  let last = 0
  let m
  while ((m = markerRe.exec(text)) !== null) {
    if (m.index > last) parts.push({ kind: 'text', text: text.slice(last, m.index) })
    const qNum = parseInt(m[1], 10)
    const q = group.questions?.find(q => q.number === qNum)
    parts.push({ kind: 'blank', qNum, q })
    last = m.index + m[0].length
  }
  if (last < text.length) parts.push({ kind: 'text', text: text.slice(last) })

  const hasWordBank = Array.isArray(group.wordBank) && group.wordBank.length > 0

  return (
    <div className="summary-passage">
      {hasWordBank && (
        <ol className="matching-options-list options-grid summary-word-bank">
          {group.wordBank.map(opt => (
            <li key={opt.key} className="matching-option-item">
              <span className="opt-key">{opt.key}.</span> {opt.text}
            </li>
          ))}
        </ol>
      )}
      <p className="summary-text">
        {parts.map((part, i) => {
          if (part.kind === 'text') return <span key={i}>{part.text}</span>
          if (hasWordBank) {
            return (
              <span key={i} className="summary-blank-wrap">
                <sup className="summary-q-num">{part.qNum}</sup>
                <select
                  id={`q${part.qNum}`}
                  className="match-gap-select summary-gap-select"
                  value={responses[part.qNum] ?? ''}
                  onChange={e => onRespond(part.qNum, e.target.value || null)}
                  aria-label={`Answer for question ${part.qNum}`}
                >
                  <option value="">–</option>
                  {group.wordBank.map(opt => (
                    <option key={opt.key} value={opt.key}>{opt.key}. {opt.text}</option>
                  ))}
                </select>
              </span>
            )
          }
          return (
            <span key={i} className="summary-blank-wrap">
              <sup className="summary-q-num">{part.qNum}</sup>
              <input
                id={`q${part.qNum}`}
                type="text"
                className="blank-input summary-blank"
                value={responses[part.qNum] ?? ''}
                onChange={e => onRespond(part.qNum, e.target.value)}
                aria-label={`Answer for question ${part.qNum}`}
                title={part.q?.wordLimit ? `No more than ${part.q.wordLimit} word${part.q.wordLimit !== 1 ? 's' : ''} from the passage` : undefined}
                placeholder="……"
              />
            </span>
          )
        })}
      </p>
    </div>
  )
}

// ── Inline completion group ────────────────────────────────────────────────
// Renders completion/note-fill questions as inline blanks within flowing text.

function CompletionInlineGroup({ group, responses, onRespond }) {
  const qMap = Object.fromEntries((group.questions ?? []).map(q => [q.number, q]))

  const renderLine = (line, i) => {
    if (line.kind === 'header')    return <div key={i} className="note-header">{line.text}</div>
    if (line.kind === 'subheader') return <div key={i} className="note-subheader">{line.text}</div>
    if (line.kind === 'static') {
      const isSub = line.sub === true
      return (
        <div key={i} className={`note-row${isSub ? ' note-row--sub' : ''}`}>
          <span className="note-row-main">
            {!line.noBullet && (
              isSub
                ? <span className="note-bullet">&ndash;&nbsp;</span>
                : <span className="note-bullet">•&nbsp;</span>
            )}
            {line.text}
          </span>
        </div>
      )
    }
    if (line.kind === 'question') {
      const q = qMap[line.number]
      if (!q) return null
      const parts    = (q.prompt ?? '').split('_______')
      const before   = parts[0] ?? ''
      const after    = parts.slice(1).join('')
      const isSub    = line.sub === true
      const noBullet = line.noBullet === true
      return (
        <div
          key={i}
          className={`note-row${isSub ? ' note-row--sub' : ''}`}
          id={`q${q.number}`}
        >
          <span className="note-row-main">
            {!noBullet && (
              isSub
                ? <span className="note-bullet">&ndash;&nbsp;</span>
                : <span className="note-bullet">•&nbsp;</span>
            )}
            {before}
            <span className="note-q-num">&thinsp;{q.number}&thinsp;</span>
            <input
              className="blank-input"
              type="text"
              value={responses[q.number] ?? ''}
              onChange={e => onRespond(q.number, e.target.value)}
              aria-label={`Answer for question ${q.number}`}
              title={q.wordLimit ? `No more than ${q.wordLimit} word${q.wordLimit !== 1 ? 's' : ''} from the passage` : undefined}
              placeholder="……"
            />
            {after}
          </span>
        </div>
      )
    }
    return null
  }

  return (
    <div className="note-box">
      {group.formTitle && <div className="note-box-title">{group.formTitle}</div>}
      {group.formContent
        ? group.formContent.map(renderLine)
        : group.questions?.map(q => {
            const parts  = (q.prompt ?? '').split('_______')
            const before = parts[0] ?? ''
            const after  = parts.slice(1).join('')
            return (
              <div key={q.number} className="note-row" id={`q${q.number}`}>
                <span className="note-row-main">
                  <span className="note-bullet">•&nbsp;</span>
                  {before}
                  <span className="note-q-num">&thinsp;{q.number}&thinsp;</span>
                  <input
                    className="blank-input"
                    type="text"
                    value={responses[q.number] ?? ''}
                    onChange={e => onRespond(q.number, e.target.value)}
                    aria-label={`Answer for question ${q.number}`}
                    title={q.wordLimit ? `No more than ${q.wordLimit} word${q.wordLimit !== 1 ? 's' : ''}` : undefined}
                    placeholder="……"
                  />
                  {after}
                </span>
              </div>
            )
          })
      }
    </div>
  )
}

// ── Choose-two group renderer ──────────────────────────────────────────────
// Multi-select checkbox list — same visual style as MCQ but allows 2 picks.
// Each question slot holds one letter; picks are distributed across slots.

function ChooseTwoGroup({ group, responses, onRespond }) {
  const questions = group.questions ?? []
  const max = questions.length

  // Collect currently selected keys from all question slots
  const selected = questions.map(q => responses[q.number]).filter(Boolean)

  function toggle(key) {
    if (selected.includes(key)) {
      // Clear whichever slot holds this key
      const slot = questions.find(q => responses[q.number] === key)
      if (slot) onRespond(slot.number, null)
    } else if (selected.length < max) {
      // Fill the first empty slot
      const empty = questions.find(q => !responses[q.number])
      if (empty) onRespond(empty.number, key)
    }
  }

  // Invisible anchors so bottom-bar Q-number buttons can scroll to each slot
  return (
    <>
      {questions.map(q => <span key={q.number} id={`q${q.number}`} />)}
      <p className="q-hint">Select {max} letters. ({selected.length}/{max} chosen)</p>
      <div className="mc-opts" role="group" aria-label={`Choose ${max} answers`}>
        {group.options?.map(opt => {
          const isSelected = selected.includes(opt.key)
          const isDisabled = !isSelected && selected.length >= max
          return (
            <label
              key={opt.key}
              className={`mc-opt${isSelected ? ' selected' : ''}${isDisabled ? ' disabled' : ''}`}
            >
              <input
                type="checkbox"
                checked={isSelected}
                onChange={() => toggle(opt.key)}
                disabled={isDisabled}
              />
              <span className="opt-letter">{opt.key}</span>
              <span className="opt-text">{opt.text}</span>
            </label>
          )
        })}
      </div>
    </>
  )
}

// ── Questions panel ────────────────────────────────────────────────────────

function QuestionsPanel({ section, responses, onRespond }) {
  return (
    <div className="questions-panel">
      {section.groups?.map((group, gi) => {
        const firstQ = group.questions?.[0]?.number
        const lastQ  = group.questions?.[group.questions.length - 1]?.number
        const range  = firstQ == null ? null
          : firstQ === lastQ ? `Question ${firstQ}`
          : `Questions ${firstQ}–${lastQ}`
        const hasDescOpts = group.options?.some(opt => opt.text !== opt.key)

        return (
          <div key={gi} className="question-group">
            {range && <div className="q-section-range">{range}</div>}

            {group.instructions && (
              <p className="group-inst-text">{group.instructions}</p>
            )}

            {/* Options box for matching with descriptive options (headings, sentence endings, word banks) */}
            {group.type === 'matching' && hasDescOpts && (
              <div className="matching-options-box">
                <p className="matching-options-label">{group.optionsLabel ?? 'Options'}</p>
                <ol className={`matching-options-list${group.inlineGap ? ' options-grid' : ''}`}>
                  {group.options.map(opt => (
                    <li key={opt.key} className="matching-option-item">
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

            {group.summaryText
              ? <SummaryCompletionGroup group={group} responses={responses} onRespond={onRespond} />
              : group.type === 'completion'
              ? <CompletionInlineGroup group={group} responses={responses} onRespond={onRespond} />
              : group.type === 'choose_two'
              ? <ChooseTwoGroup group={group} responses={responses} onRespond={onRespond} />
              : group.questions?.map(q => (
                  <QuestionItem
                    key={q.number}
                    q={{ ...q, group }}
                    response={responses[q.number]}
                    onRespond={onRespond}
                  />
                ))
            }
          </div>
        )
      })}
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
  const [testLabel, setTestLabel] = useState('')
  const [loadError, setLoadError] = useState('')
  const [responses, setResponses] = useState({})
  const [activeSection, setActiveSection] = useState(0)
  const [activeQuestion, setActiveQuestion] = useState(1)
  const [timeLeft, setTimeLeft] = useState(null)
  const [submitting, setSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState('')
  const [showConfirm, setShowConfirm] = useState(false)
  const [showExitConfirm, setShowExitConfirm] = useState(false)
  const startedAtRef = useRef(null)
  const submittedRef = useRef(false)
  const { bar, savedRange, onMouseUp, onTouchEnd, hide } = useHighlight()
  const prefs = useExamPrefs()
  const bodyRef = useRef(null)

  // Drag the divider to rebalance passage and questions, as the real
  // computer-delivered test allows. Pointer events cover mouse and touch.
  const startDrag = useCallback(e => {
    e.preventDefault()
    const body = bodyRef.current
    if (!body) return

    const move = ev => {
      const rect = body.getBoundingClientRect()
      const x = (ev.clientX ?? 0) - rect.left
      prefs.setSplit((x / rect.width) * 100)
    }
    const stop = () => {
      window.removeEventListener('pointermove', move)
      window.removeEventListener('pointerup', stop)
      document.body.style.userSelect = ''
      document.body.style.cursor = ''
    }
    document.body.style.userSelect = 'none'
    document.body.style.cursor = 'col-resize'
    window.addEventListener('pointermove', move)
    window.addEventListener('pointerup', stop)
  }, [prefs])

  // Keyboard access for the divider — a drag handle must not be mouse-only.
  const dividerKey = useCallback(e => {
    if (e.key === 'ArrowLeft')  { e.preventDefault(); prefs.setSplit(prefs.split - 2) }
    if (e.key === 'ArrowRight') { e.preventDefault(); prefs.setSplit(prefs.split + 2) }
    if (e.key === 'Home')       { e.preventDefault(); prefs.resetSplit() }
  }, [prefs])

  // Load test — from tests_public, which never includes the answer key
  useEffect(() => {
    supabase
      .from('tests_public')
      .select('content, duration_seconds, published, test_label')
      .eq('id', testId)
      .single()
      .then(({ data, error }) => {
        if (error || !data) { setLoadError('Test not found.'); return }
        setTest(data.content)
        setTestLabel(data.test_label ?? '')
        setTimeLeft(data.duration_seconds)
        startedAtRef.current = Date.now()
      })
  }, [testId])

  // Submit handler — stable via ref. Grading happens server-side (api/grade)
  // so the answer key never reaches the browser during the exam.
  const submitRef = useRef(null)
  const handleSubmit = useCallback(async () => {
    if (submittedRef.current || !test) return
    submittedRef.current = true
    setSubmitting(true)
    setSubmitError('')

    try {
      await submitExam({ attemptId, responses })
    } catch (err) {
      // Let the candidate retry rather than losing their answers.
      submittedRef.current = false
      setSubmitting(false)
      setSubmitError(err.message || 'Could not submit. Please try again.')
      return
    }

    navigate(`/reading/results/${attemptId}`)
  }, [test, responses, attemptId, navigate])

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

  function goToQuestion(num, allQs) {
    const q = allQs.find(x => x.number === num)
    if (!q) return
    setActiveQuestion(num)
    if (q.sectionIndex !== activeSection) setActiveSection(q.sectionIndex)
    setTimeout(() => scrollToQuestion(num), 80)
  }

  function onRespond(num, val) {
    setResponses(r => ({ ...r, [num]: val }))
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
          <button
            className="btn btn-ghost exam-back-btn"
            onClick={() => setShowExitConfirm(true)}
            aria-label="Back to dashboard"
          >
            ← Dashboard
          </button>
          <span className="exam-badge">Reading</span>
          <span className="exam-test-name">{testLabel || 'Test'}</span>
        </div>
        <div
          className={`exam-timer ${urgent ? 'urgent' : warning ? 'warning' : ''}`}
          aria-live="off"
          aria-label={`Time remaining: ${fmtTime(timeLeft ?? 0)}`}
        >
          <span className="exam-timer-label">Time left</span>
          <span className="exam-timer-value">{fmtTime(timeLeft ?? 0)}</span>
        </div>
        <div className="exam-header-right">
          <span className="exam-progress num">{answeredCount}/{questions.length} answered</span>
          <ThemeToggle />
        </div>
      </header>
      <HighlightBar bar={bar} savedRange={savedRange} onHide={hide} />

      {/* ── Passage tabs + reading controls ── */}
      <div className="exam-subbar">
        <nav className="exam-section-tabs" aria-label="Passages">
          {sections.map((sec, i) => (
            <button
              key={sec.id}
              className={`section-tab ${activeSection === i ? 'active' : ''}`}
              onClick={() => setActiveSection(i)}
              aria-current={activeSection === i ? 'page' : undefined}
            >
              <span className="section-tab-n num">{i + 1}</span>
              <span className="section-tab-name">{sec.title}</span>
            </button>
          ))}
        </nav>

        <div className="exam-textsize" role="group" aria-label="Text size">
          <span className="exam-textsize-lbl">Text size</span>
          <button
            className="textsize-btn"
            onClick={prefs.smallerText}
            disabled={!prefs.canShrink}
            aria-label="Decrease text size"
          >A&minus;</button>
          <button
            className="textsize-btn"
            onClick={prefs.biggerText}
            disabled={!prefs.canGrow}
            aria-label="Increase text size"
          >A+</button>
        </div>
      </div>

      <div className="exam-progress-strip" aria-hidden="true">
        <div className="exam-progress-strip-fill" style={{ width: `${questions.length ? (answeredCount / questions.length) * 100 : 0}%` }} />
      </div>

      {/* ── Split screen body ── */}
      <div
        className="exam-body"
        ref={bodyRef}
        onMouseUp={onMouseUp}
        onTouchEnd={onTouchEnd}
        style={{ '--split': `${prefs.split}%`, '--reading-scale': prefs.scale }}
      >
        <div className="exam-passage-col">
          <PassagePanel section={currentSection} />
        </div>

        <div
          className="exam-divider"
          role="separator"
          aria-orientation="vertical"
          aria-label="Resize passage and questions. Use the arrow keys."
          aria-valuenow={Math.round(prefs.split)}
          aria-valuemin={30}
          aria-valuemax={70}
          tabIndex={0}
          onPointerDown={startDrag}
          onKeyDown={dividerKey}
          onDoubleClick={prefs.resetSplit}
        >
          <span className="exam-divider-grip" aria-hidden="true" />
        </div>

        <div className="exam-questions-col">
          <QuestionsPanel
            section={currentSection}
            responses={responses}
            onRespond={onRespond}
          />
        </div>
      </div>

      {/* ── Footer: palette + submit ── */}
      <footer className="exam-footer">
        <div className="exam-palette-wrap">
          <nav className="exam-palette" aria-label="Question navigation">
            {questions.map(q => {
              const ans = isAnswered(responses[q.number])
              return (
                <button
                  key={q.number}
                  className={`palette-btn ${ans ? 'answered' : ''}${activeQuestion === q.number ? ' active' : ''}`}
                  onClick={() => goToQuestion(q.number, questions)}
                  title={`Question ${q.number}${ans ? ' (answered)' : ''}`}
                  aria-label={`Go to question ${q.number}`}
                  aria-current={activeQuestion === q.number ? 'true' : undefined}
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
            <span className="legend-dot unanswered" /> Unanswered
          </div>
          <div className="exam-nav-btns">
            <button
              className="btn btn-outline exam-nav-btn"
              onClick={() => goToQuestion(activeQuestion - 1, questions)}
              disabled={activeQuestion <= 1}
              aria-label="Previous question"
            >
              ← Previous
            </button>
            <button
              className="btn btn-outline exam-nav-btn"
              onClick={() => goToQuestion(activeQuestion + 1, questions)}
              disabled={activeQuestion >= questions.length}
              aria-label="Next question"
            >
              Next →
            </button>
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

      {/* ── Exit confirmation modal ── */}
      {showExitConfirm && (
        <div className="modal-backdrop" role="dialog" aria-modal="true" aria-labelledby="exit-title">
          <div className="modal-box">
            <h2 id="exit-title" className="modal-title">Leave the test?</h2>
            <p className="modal-body">
              Your progress will be lost. This attempt will not be saved.
            </p>
            <div className="modal-actions">
              <button className="btn btn-outline" onClick={() => setShowExitConfirm(false)} autoFocus>
                Stay
              </button>
              <button className="btn btn-danger" onClick={() => navigate('/dashboard')}>
                Leave
              </button>
            </div>
          </div>
        </div>
      )}

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
            {submitError && <p className="exam-submit-error" role="alert">{submitError}</p>}
            <div className="modal-actions">
              <button
                className="btn btn-outline"
                onClick={() => setShowConfirm(false)}
                disabled={submitting}
                autoFocus
              >
                Go back
              </button>
              <button
                className="btn btn-primary"
                onClick={() => handleSubmit()}
                disabled={submitting}
              >
                {submitting ? 'Submitting…' : submitError ? 'Try again' : 'Yes, submit'}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* ── Auto-submit failure (timer expired, no modal open) ── */}
      {submitError && !showConfirm && (
        <div className="modal-backdrop" role="dialog" aria-modal="true">
          <div className="modal-box">
            <h2 className="modal-title">Submission failed</h2>
            <p className="modal-body">{submitError}</p>
            <div className="modal-actions">
              <button className="btn btn-primary" onClick={() => handleSubmit()} disabled={submitting}>
                {submitting ? 'Submitting…' : 'Retry submit'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
