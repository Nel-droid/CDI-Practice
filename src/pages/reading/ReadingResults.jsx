import { useEffect, useState, useCallback } from 'react'
import { useParams, Link } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { useTargetBand } from '../../lib/useTargetBand'
import { mergeHighlightSpans } from '../../lib/highlighting/mergeHighlightSpans'
import BandRule from '../../components/BandRule'
import TypeAccuracyChart from '../../components/charts/TypeAccuracyChart'
import './ReadingResults.css'

// ── Helpers ───────────────────────────────────────────────────────────────────

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

function formatGiven(given) {
  if (Array.isArray(given)) return given.join(', ') || '(no answer)'
  return given || '(no answer)'
}

function formatAnswer(answer, groupType) {
  if (!Array.isArray(answer)) return answer ?? '—'
  return answer.join(groupType === 'choose_two' ? ' and ' : ' / ')
}

// ── Popover positioning ───────────────────────────────────────────────────────

const POP_W = 360
const POP_GAP = 8

function getPopoverStyle(anchorRect) {
  if (!anchorRect) return {}
  const W = window.innerWidth
  const H = window.innerHeight

  // Horizontal: left-align to trigger, shift left if near the right edge
  let left = anchorRect.left
  if (left + POP_W > W - POP_GAP) left = W - POP_W - POP_GAP
  if (left < POP_GAP) left = POP_GAP

  const spaceBelow = H - anchorRect.bottom - POP_GAP
  const spaceAbove = anchorRect.top - POP_GAP

  // Prefer downward; flip upward only when there is more room above.
  // Pass maxHeight so the popover is capped to the available space in whichever
  // direction we open — the CSS overflow-y:auto then handles internal scrolling.
  if (spaceBelow >= spaceAbove) {
    return { top: anchorRect.bottom + POP_GAP, left, width: POP_W, maxHeight: spaceBelow }
  }
  return { bottom: H - anchorRect.top + POP_GAP, left, width: POP_W, maxHeight: spaceAbove }
}

// ── Explanation Popover ───────────────────────────────────────────────────────

function ExplanationPopover({ item, anchorRect, onClose }) {
  const { pq, meta } = item

  useEffect(() => {
    function handleOutside(e) {
      if (e.target.closest('.review-popover')) return
      if (e.target.closest('.ev-qnum-box')) return
      if (e.target.closest('.rl-info-btn')) return
      onClose()
    }
    function handleKey(e) { if (e.key === 'Escape') onClose() }
    document.addEventListener('mousedown', handleOutside)
    document.addEventListener('keydown', handleKey)
    return () => {
      document.removeEventListener('mousedown', handleOutside)
      document.removeEventListener('keydown', handleKey)
    }
  }, [onClose])

  const answerDisplay = formatAnswer(pq.answer, meta?.group?.type)
  const givenDisplay  = formatGiven(pq.given)

  return (
    <div
      className="review-popover"
      style={getPopoverStyle(anchorRect)}
      role="dialog"
      aria-modal="false"
      aria-label={`Explanation for question ${pq.number}`}
    >
      <div className="popover-header">
        <span className="popover-qnum">Q{pq.number}</span>
        {pq.correct
          ? <span className="badge-correct">✓ Correct</span>
          : <span className="badge-wrong">✗ Incorrect</span>}
        <button className="popover-close" onClick={onClose} aria-label="Close explanation">×</button>
      </div>

      {meta?.prompt && (
        <div className="popover-section">
          <span className="popover-label">Question</span>
          <p className="popover-text">{meta.prompt}</p>
        </div>
      )}

      <div className="popover-section">
        <span className="popover-label">Your answer</span>
        <span className={`popover-answer ${pq.correct ? 'answer-correct' : 'answer-wrong'}`}>
          {givenDisplay}
        </span>
      </div>

      {!pq.correct && (
        <div className="popover-section">
          <span className="popover-label">Correct answer</span>
          <span className="popover-answer answer-correct">{answerDisplay}</span>
        </div>
      )}

      {meta?.explanation && (
        <div className="popover-section">
          <span className="popover-label">Explanation</span>
          <p className="popover-text">{meta.explanation}</p>
        </div>
      )}

      {meta?.evidence?.quote && (
        <div className="popover-section">
          <span className="popover-label">Evidence</span>
          <blockquote className="popover-quote">"{meta.evidence.quote}"</blockquote>
        </div>
      )}

      {meta?.paraphraseNote && (
        <div className="popover-section popover-paraphrase">
          <span className="popover-label">Paraphrase / wording</span>
          <p className="popover-text">{meta.paraphraseNote}</p>
        </div>
      )}
    </div>
  )
}

// ── Multi-highlight renderer ──────────────────────────────────────────────────
// Merges overlapping/duplicate evidence spans into clusters so two questions
// that reference the same passage sentence both render their [N] boxes, e.g.
// a shared sentence shows [5][10] rather than dropping one of them.

function renderWithHighlights(text, items, openPopover) {
  const clusters = mergeHighlightSpans(text, items)
  if (clusters.length === 0) return [text]

  const parts = []
  let cursor = 0

  clusters.forEach((cluster, i) => {
    if (cluster.start > cursor) parts.push(text.slice(cursor, cluster.start))

    const allCorrect = cluster.items.every(it => it.pq.correct)
    const allWrong   = cluster.items.every(it => !it.pq.correct)
    const tintClass  = allCorrect ? 'ev-correct' : allWrong ? 'ev-wrong' : 'ev-mixed'

    parts.push(
      <mark key={i} className={`ev-highlight ${tintClass}`}>
        {text.slice(cluster.start, cluster.end)}
        {cluster.items.map(item => (
          <button
            key={item.pq.number}
            className={`ev-qnum-box ${item.pq.correct ? 'ev-qnum-correct' : 'ev-qnum-wrong'}`}
            onClick={e => { e.stopPropagation(); openPopover(item, e) }}
            onKeyDown={e => { if (e.key === 'Enter') { e.stopPropagation(); openPopover(item, e) } }}
            aria-label={`Question ${item.pq.number}: ${item.pq.correct ? 'correct' : 'incorrect'} — open explanation`}
          >
            {item.pq.number}
          </button>
        ))}
      </mark>
    )
    cursor = cluster.end
  })

  if (cursor < text.length) parts.push(text.slice(cursor))
  return parts
}

// ── Review: passage column ────────────────────────────────────────────────────

function PassagePanelReview({ sections, activeSection, onSectionChange, evidenceByPara, openPopover }) {
  const sec = sections[activeSection]
  return (
    <div className="review-passage-col">
      <nav className="review-tabs" aria-label="Passages">
        {sections.map((s, i) => (
          <button
            key={s.id}
            className={`review-tab ${activeSection === i ? 'active' : ''}`}
            onClick={() => onSectionChange(i)}
            aria-current={activeSection === i ? 'page' : undefined}
          >
            {s.title}
          </button>
        ))}
      </nav>
      {sec && (
        <div className="review-passage-inner">
          <h2 className="review-passage-title">{sec.title}</h2>
          {sec.passage?.map(para => {
            const key = `${sec.id}:${para.ref}`
            const items = evidenceByPara[key] ?? []
            return (
              <div
                key={para.ref}
                className={`review-para ${items.length > 0 ? 'has-evidence' : ''}`}
              >
                <span className="para-ref" aria-label={`Paragraph ${para.ref}`}>{para.ref}</span>
                <span className="para-text">
                  {items.length > 0
                    ? renderWithHighlights(para.text, items, openPopover)
                    : para.text}
                </span>
              </div>
            )
          })}
        </div>
      )}
    </div>
  )
}

// ── Review: question list column ──────────────────────────────────────────────

function ReviewListPanel({ perQuestion, qMeta, sections, activePopoverNum, openPopover }) {
  return (
    <div className="review-list-col">
      <div className="rl-header">Questions</div>
      {sections.map(sec => {
        const secQs = perQuestion.filter(pq => qMeta[pq.number]?.sectionId === sec.id)
        if (secQs.length === 0) return null
        return (
          <div key={sec.id} className="rl-section-group">
            <div className="rl-section-title">{sec.title}</div>
            {secQs.map(pq => {
              const meta = qMeta[pq.number]
              const answerDisplay = formatAnswer(pq.answer, meta?.group?.type)
              const isActive = activePopoverNum === pq.number
              return (
                <div key={pq.number} className={`rl-row ${isActive ? 'rl-row-active' : ''}`}>
                  <span className="rl-qchip">Q{pq.number}</span>
                  <span className={`rl-mark ${pq.correct ? 'rl-correct' : 'rl-wrong'}`}>
                    {pq.correct ? '✓' : '✗'}
                  </span>
                  <span className="rl-answer">Answer: {answerDisplay}</span>
                  <button
                    className="rl-info-btn"
                    onClick={e => openPopover({ pq, meta }, e)}
                    aria-label={`Open explanation for question ${pq.number}`}
                  >ⓘ</button>
                </div>
              )
            })}
          </div>
        )
      })}
    </div>
  )
}

// ── Main component ────────────────────────────────────────────────────────────

export default function ReadingResults() {
  const { attemptId } = useParams()

  const { user } = useAuth()
  const [target] = useTargetBand(user)

  const [attempt,        setAttempt]       = useState(null)
  const [test,           setTest]          = useState(null)
  const [testMeta,       setTestMeta]      = useState({})
  const [loading,        setLoading]       = useState(true)
  const [error,          setError]         = useState('')
  const [mode,           setMode]          = useState('results')  // 'results' | 'review'
  const [reviewSection,  setReviewSection] = useState(0)
  const [popover,        setPopover]       = useState(null)  // { item, anchorRect } | null

  const closePopover = useCallback(() => setPopover(null), [])

  function openPopover(item, e) {
    setPopover({ item, anchorRect: e.currentTarget.getBoundingClientRect() })
  }

  useEffect(() => {
    async function load() {
      const { data: att, error: e1 } = await supabase
        .from('attempts')
        .select('*')
        .eq('id', attemptId)
        .single()

      if (e1 || !att) { setError('Result not found.'); setLoading(false); return }
      setAttempt(att)

      // Full content (with answers/explanations) is released only for the
      // owner's own submitted attempt, via a SECURITY DEFINER RPC.
      const { data: review } = await supabase
        .rpc('get_review_content', { p_attempt_id: attemptId })
      if (review) {
        setTest(review.content)
        setTestMeta({ book: review.book, label: review.test_label })
      }

      setLoading(false)
    }
    load()
  }, [attemptId])

  if (loading) return <div className="results-loading" aria-live="polite">Loading results…</div>
  if (error)   return <div className="results-error"><p>{error}</p><Link to="/reading">← Back to Reading</Link></div>

  const marked      = attempt.marked ?? {}
  const perQuestion = marked.perQuestion ?? []
  const sections    = test?.sections ?? []

  // Lookup: questionNumber → { question meta, group ref, sectionId }
  const qMeta = {}
  for (const sec of sections) {
    for (const grp of sec.groups ?? []) {
      for (const q of grp.questions ?? []) {
        qMeta[q.number] = { ...q, sectionId: sec.id, group: grp }
      }
    }
  }

  // ── Results view ────────────────────────────────────────────────────────────

  if (mode === 'results') {
    // Computed at submit time; older attempts predate it and simply omit the panel.
    const byType = (marked.byType ?? [])
      .map(r => ({ ...r, accuracy: r.total ? r.correct / r.total : 0 }))
      .sort((a, b) => a.accuracy - b.accuracy || b.total - a.total)

    return (
      <div className="results-page">
        <header className="results-head">
          <div>
            <p className="results-kicker num">Reading · result</p>
            <h1 className="results-title">
              {testMeta.book ?? 'Academic Reading'}
              {testMeta.label ? <span className="results-title-sep"> · {testMeta.label}</span> : null}
            </h1>
            <p className="results-when">
              {attempt.submitted_at
                ? new Date(attempt.submitted_at).toLocaleDateString('en-GB',
                    { day: 'numeric', month: 'long', year: 'numeric' })
                : ''}
            </p>
          </div>
          <div className="results-head-actions">
            <Link to="/dashboard" className="btn btn-outline">Dashboard</Link>
            <button
              className="btn btn-primary"
              onClick={() => { setMode('review'); setPopover(null); setReviewSection(0) }}
            >
              Review with feedback →
            </button>
          </div>
        </header>

        {/* ── The score, against the scale it is reported on ── */}
        <section className="results-band-card" aria-label="Your band">
          <div className="results-figures">
            <div className="rfig rfig--band">
              <span className="rfig-val num">{attempt.band ?? '—'}</span>
              <span className="rfig-lbl">Band</span>
            </div>
            <div className="rfig">
              <span className="rfig-val num">
                {marked.raw ?? 0}<span className="rfig-of">/{marked.total ?? perQuestion.length}</span>
              </span>
              <span className="rfig-lbl">Correct</span>
            </div>
            <div className="rfig">
              <span className="rfig-val num">{fmtDuration(attempt.duration_seconds)}</span>
              <span className="rfig-lbl">Time taken</span>
            </div>
          </div>
          {attempt.band != null && (
            <BandRule current={attempt.band} target={target} size="sm" />
          )}
        </section>

        {/* ── Where the marks went ── */}
        {byType.length > 0 && (
          <section className="results-panel" aria-labelledby="rt-h">
            <h2 id="rt-h" className="results-section-title">Where the marks went</h2>
            <TypeAccuracyChart
              rows={byType}
              limit={12}
              caption="Accuracy in this test, weakest task type first."
            />
          </section>
        )}

        <div className="results-table-wrap">
          <h2 className="results-section-title">Per-question breakdown</h2>
          <table className="results-table" aria-label="Question results">
            <thead>
              <tr>
                <th>#</th>
                <th>Your answer</th>
                <th>Correct answer</th>
                <th>Result</th>
              </tr>
            </thead>
            <tbody>
              {perQuestion.map(pq => {
                const given      = formatGiven(pq.given)
                const answerJoin = qMeta[pq.number]?.group?.type === 'choose_two' ? ' and ' : ' / '
                const answer     = Array.isArray(pq.answer) ? pq.answer.join(answerJoin) : (pq.answer ?? '—')
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
                  </tr>
                )
              })}
            </tbody>
          </table>
        </div>
      </div>
    )
  }

  // ── Review view ─────────────────────────────────────────────────────────────

  // Map: `${sectionId}:${paraRef}` → [{ pq, meta }]
  const evidenceByPara = {}
  for (const pq of perQuestion) {
    const meta = qMeta[pq.number]
    const ev   = meta?.evidence
    if (ev?.sectionId && ev?.ref && ev?.quote) {
      const key = `${ev.sectionId}:${ev.ref}`
      if (!evidenceByPara[key]) evidenceByPara[key] = []
      evidenceByPara[key].push({ pq, meta })
    }
  }

  const activePopoverNum = popover?.item?.pq?.number ?? null

  return (
    <div className="review-page">
      <div className="review-toolbar">
        <button
          className="btn btn-outline btn-sm"
          onClick={() => { setMode('results'); setPopover(null) }}
        >
          ← Back to results
        </button>
        <span className="review-toolbar-title">In-passage review</span>
        <span className="review-toolbar-score">
          {marked.raw ?? 0} / {marked.total ?? perQuestion.length} correct
        </span>
      </div>

      <div className="review-body">
        <PassagePanelReview
          sections={sections}
          activeSection={reviewSection}
          onSectionChange={i => { setReviewSection(i); setPopover(null) }}
          evidenceByPara={evidenceByPara}
          openPopover={openPopover}
        />
        <ReviewListPanel
          perQuestion={perQuestion}
          qMeta={qMeta}
          sections={sections}
          activePopoverNum={activePopoverNum}
          openPopover={openPopover}
        />
      </div>

      {popover && (
        <ExplanationPopover
          item={popover.item}
          anchorRect={popover.anchorRect}
          onClose={closePopover}
        />
      )}
    </div>
  )
}
