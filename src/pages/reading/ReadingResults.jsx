import { useEffect, useState } from 'react'
import { useParams, useNavigate, Link } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import './ReadingResults.css'

// Highlight a quote string inside paragraph text
function highlightText(text, quote) {
  if (!quote) return <>{text}</>
  const idx = text.toLowerCase().indexOf(quote.toLowerCase())
  if (idx === -1) return <>{text}</>
  return (
    <>
      {text.slice(0, idx)}
      <mark className="evidence-mark">{text.slice(idx, idx + quote.length)}</mark>
      {text.slice(idx + quote.length)}
    </>
  )
}

function PassagePanelFeedback({ sections, evidence }) {
  const sec = sections.find(s => s.id === evidence?.sectionId)
  if (!sec) return null
  return (
    <div className="results-passage">
      <h3 className="results-passage-title">{sec.title}</h3>
      {sec.passage?.map(para => (
        <div
          key={para.ref}
          className={`results-para ${evidence?.ref === para.ref ? 'evidence-para' : ''}`}
          id={`fb-para-${sec.id}-${para.ref}`}
        >
          <span className="para-ref">{para.ref}</span>
          <span className="para-text">
            {evidence?.ref === para.ref
              ? highlightText(para.text, evidence.quote)
              : para.text}
          </span>
        </div>
      ))}
    </div>
  )
}

function fmtDuration(secs) {
  if (!secs) return '—'
  const m = Math.floor(secs / 60)
  const s = secs % 60
  return `${m}m ${s}s`
}

function bandClass(band) {
  if (band >= 7) return 'band-high'
  if (band >= 5) return 'band-mid'
  return 'band-low'
}

export default function ReadingResults() {
  const { attemptId } = useParams()
  const navigate = useNavigate()

  const [attempt, setAttempt] = useState(null)
  const [test, setTest] = useState(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [mode, setMode] = useState('results')   // 'results' | 'feedback'
  const [feedbackQ, setFeedbackQ] = useState(null)  // the question under review

  useEffect(() => {
    async function load() {
      const { data: att, error: e1 } = await supabase
        .from('attempts')
        .select('*')
        .eq('id', attemptId)
        .single()

      if (e1 || !att) { setError('Result not found.'); setLoading(false); return }
      setAttempt(att)

      if (att.test_id) {
        const { data: t } = await supabase
          .from('tests')
          .select('content')
          .eq('id', att.test_id)
          .single()
        if (t) setTest(t.content)
      }

      setLoading(false)
    }
    load()
  }, [attemptId])

  if (loading) return <div className="results-loading" aria-live="polite">Loading results…</div>
  if (error)   return <div className="results-error"><p>{error}</p><Link to="/reading">← Back to Reading</Link></div>

  const marked = attempt.marked ?? {}
  const perQuestion = marked.perQuestion ?? []
  const sections = test?.sections ?? []

  // Build lookup: questionNumber → { question meta, group }
  const qMeta = {}
  for (const sec of sections) {
    for (const grp of sec.groups ?? []) {
      for (const q of grp.questions ?? []) {
        qMeta[q.number] = { ...q, sectionId: sec.id, group: grp }
      }
    }
  }

  function openFeedback(pq) {
    const meta = qMeta[pq.number]
    setFeedbackQ({ ...pq, meta })
    setMode('feedback')
  }

  // ── Results view ────────────────────────────────────────────

  if (mode === 'results') {
    return (
      <div className="results-page">
        <div className="results-summary-card">
          <div className="results-heading">
            <div>
              <h1 className="results-title">Reading Results</h1>
              <p className="results-test-name">
                {test?.book ?? 'CDI Practice'} — {test?.testLabel ?? 'Test'}
              </p>
            </div>
            <Link to="/reading" className="results-back-link">← New test</Link>
          </div>

          <div className="results-stats">
            {attempt.band != null && (
              <div className={`stat-band ${bandClass(attempt.band)}`}>
                <span className="stat-value">{attempt.band}</span>
                <span className="stat-label">Band</span>
              </div>
            )}
            <div className="stat-box">
              <span className="stat-value">{marked.raw ?? 0}/{marked.total ?? perQuestion.length}</span>
              <span className="stat-label">Score</span>
            </div>
            <div className="stat-box">
              <span className="stat-value">{fmtDuration(attempt.duration_seconds)}</span>
              <span className="stat-label">Time taken</span>
            </div>
          </div>

          <div className="results-actions">
            <Link to="/dashboard" className="btn btn-outline">Dashboard</Link>
            <button className="btn btn-primary" onClick={() => setMode('feedback')}>
              Review with feedback →
            </button>
          </div>
        </div>

        <div className="results-table-wrap">
          <h2 className="results-section-title">Per-question breakdown</h2>
          <table className="results-table" aria-label="Question results">
            <thead>
              <tr>
                <th>#</th>
                <th>Your answer</th>
                <th>Correct answer</th>
                <th>Result</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {perQuestion.map(pq => {
                const given = Array.isArray(pq.given)
                  ? pq.given.join(', ') || '—'
                  : (pq.given ?? '—')
                const answerJoin = qMeta[pq.number]?.group?.type === 'choose_two' ? ' and ' : ' / '
                const answer = Array.isArray(pq.answer)
                  ? pq.answer.join(answerJoin)
                  : (pq.answer ?? '—')
                return (
                  <tr key={pq.number} className={pq.correct ? 'row-correct' : 'row-wrong'}>
                    <td className="td-num">{pq.number}</td>
                    <td className="td-response">{String(given)}</td>
                    <td className="td-answer">{String(answer)}</td>
                    <td className="td-result">
                      {pq.correct
                        ? <span className="badge-correct">✓ Correct</span>
                        : <span className="badge-wrong">✗ Wrong</span>}
                    </td>
                    <td>
                      <button
                        className="btn-explain"
                        onClick={() => openFeedback(pq)}
                        aria-label={`Explanation for question ${pq.number}`}
                      >
                        Explain →
                      </button>
                    </td>
                  </tr>
                )
              })}
            </tbody>
          </table>
        </div>
      </div>
    )
  }

  // ── Feedback view ───────────────────────────────────────────

  const currentIdx = feedbackQ
    ? perQuestion.findIndex(p => p.number === feedbackQ.number)
    : 0

  function goTo(idx) {
    if (idx < 0 || idx >= perQuestion.length) return
    const pq = perQuestion[idx]
    const meta = qMeta[pq.number]
    setFeedbackQ({ ...pq, meta })
  }

  const meta = feedbackQ?.meta
  const evidence = meta?.evidence ?? null
  const givenDisplay = Array.isArray(feedbackQ?.given)
    ? feedbackQ.given.join(', ') || '(no answer)'
    : (feedbackQ?.given ?? '(no answer)')
  const feedbackAnswerJoin = meta?.group?.type === 'choose_two' ? ' and ' : ' / '
  const answerDisplay = Array.isArray(feedbackQ?.answer)
    ? feedbackQ.answer.join(feedbackAnswerJoin)
    : (feedbackQ?.answer ?? '—')

  return (
    <div className="feedback-page">
      {/* Toolbar */}
      <div className="feedback-toolbar">
        <button className="btn btn-outline btn-sm" onClick={() => setMode('results')}>
          ← Back to results
        </button>
        <span className="feedback-nav-label">
          Question {feedbackQ?.number ?? '—'} of {perQuestion.length}
        </span>
        <div className="feedback-nav-btns">
          <button
            className="btn btn-outline btn-sm"
            onClick={() => goTo(currentIdx - 1)}
            disabled={currentIdx <= 0}
            aria-label="Previous question"
          >
            ‹ Prev
          </button>
          <button
            className="btn btn-outline btn-sm"
            onClick={() => goTo(currentIdx + 1)}
            disabled={currentIdx >= perQuestion.length - 1}
            aria-label="Next question"
          >
            Next ›
          </button>
        </div>
      </div>

      {/* Question picker (palette) */}
      <div className="feedback-palette-wrap">
        <nav className="feedback-palette" aria-label="Jump to question">
          {perQuestion.map((pq, i) => (
            <button
              key={pq.number}
              className={`fb-palette-btn ${pq.correct ? 'correct' : 'wrong'} ${i === currentIdx ? 'current' : ''}`}
              onClick={() => goTo(i)}
              aria-label={`Question ${pq.number}: ${pq.correct ? 'correct' : 'wrong'}`}
              aria-current={i === currentIdx ? 'true' : undefined}
            >
              {pq.number}
            </button>
          ))}
        </nav>
      </div>

      {feedbackQ ? (
        <div className="feedback-body">
          {/* Left: passage with evidence highlighted */}
          <div className="feedback-passage-col">
            <PassagePanelFeedback sections={sections} evidence={evidence} />
          </div>

          {/* Right: explanation panel */}
          <div className="feedback-detail-col">
            <div className={`feedback-card ${feedbackQ.correct ? 'fb-correct' : 'fb-wrong'}`}>
              <div className="fb-card-header">
                <span className="fb-q-number">Q{feedbackQ.number}</span>
                {feedbackQ.correct
                  ? <span className="badge-correct">✓ Correct</span>
                  : <span className="badge-wrong">✗ Incorrect</span>}
              </div>

              {meta?.prompt && (
                <p className="fb-prompt">{meta.prompt}</p>
              )}

              <div className="fb-answers">
                <div className="fb-answer-row">
                  <span className="fb-answer-label">Your answer</span>
                  <span className={`fb-answer-value ${feedbackQ.correct ? 'correct' : 'wrong'}`}>
                    {String(givenDisplay)}
                  </span>
                </div>
                {!feedbackQ.correct && (
                  <div className="fb-answer-row">
                    <span className="fb-answer-label">Correct answer</span>
                    <span className="fb-answer-value correct">{String(answerDisplay)}</span>
                  </div>
                )}
              </div>

              {meta?.explanation && (
                <div className="fb-explanation">
                  <p className="fb-explanation-label">Explanation</p>
                  <p className="fb-explanation-text">{meta.explanation}</p>
                </div>
              )}

              {evidence && (
                <div className="fb-evidence">
                  <p className="fb-evidence-label">
                    Evidence — {evidence.sectionId === 'p1' ? 'Passage 1' : evidence.sectionId === 'p2' ? 'Passage 2' : 'Passage 3'}, Paragraph {evidence.ref}
                  </p>
                  <blockquote className="fb-evidence-quote">
                    "{evidence.quote}"
                  </blockquote>
                </div>
              )}
            </div>

            <div className="fb-nav-bottom">
              <button
                className="btn btn-outline"
                onClick={() => goTo(currentIdx - 1)}
                disabled={currentIdx <= 0}
              >
                ‹ Previous question
              </button>
              <button
                className="btn btn-primary"
                onClick={() => goTo(currentIdx + 1)}
                disabled={currentIdx >= perQuestion.length - 1}
              >
                Next question ›
              </button>
            </div>
          </div>
        </div>
      ) : (
        <div className="feedback-pick-prompt">
          <p>Select a question from the palette above to view its explanation and evidence.</p>
          <div className="fb-start-btns">
            {perQuestion.length > 0 && (
              <button className="btn btn-primary" onClick={() => goTo(0)}>
                Start from Question 1 →
              </button>
            )}
          </div>
        </div>
      )}
    </div>
  )
}
