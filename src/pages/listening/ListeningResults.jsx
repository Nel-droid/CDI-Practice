import { useEffect, useState, useCallback } from 'react'
import { useParams, useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { mergeHighlightSpans } from '../../lib/highlighting/mergeHighlightSpans'
import './ListeningResults.css'

// ── Helpers ───────────────────────────────────────────────────────────────────

function formatGiven(given) {
  if (Array.isArray(given)) return given.join(', ') || '(no answer)'
  return given || '(no answer)'
}

function formatAnswer(answer) {
  if (!Array.isArray(answer)) return answer ?? '—'
  return answer.join(' / ')
}

// ── Popover positioning ───────────────────────────────────────────────────────

const POP_W = 360
const POP_GAP = 8

function getPopoverStyle(anchorRect) {
  if (!anchorRect) return {}
  const W = window.innerWidth
  const H = window.innerHeight
  let left = anchorRect.left
  if (left + POP_W > W - POP_GAP) left = W - POP_W - POP_GAP
  if (left < POP_GAP) left = POP_GAP
  const spaceBelow = H - anchorRect.bottom - POP_GAP
  const spaceAbove = anchorRect.top - POP_GAP
  if (spaceBelow >= spaceAbove) {
    return { top: anchorRect.bottom + POP_GAP, left, width: POP_W, maxHeight: spaceBelow }
  }
  return { bottom: H - anchorRect.top + POP_GAP, left, width: POP_W, maxHeight: spaceAbove }
}

// ── Explanation popover ───────────────────────────────────────────────────────

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
        <button className="popover-close" onClick={onClose} aria-label="Close">×</button>
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
          {formatGiven(pq.given)}
        </span>
      </div>

      {!pq.correct && (
        <div className="popover-section">
          <span className="popover-label">Correct answer</span>
          <span className="popover-answer answer-correct">{formatAnswer(pq.answer)}</span>
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
          <span className="popover-label">Evidence in transcript</span>
          <blockquote className="popover-quote">"{meta.evidence.quote}"</blockquote>
        </div>
      )}
    </div>
  )
}

// ── Evidence highlight renderer ───────────────────────────────────────────────

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
            aria-label={`Question ${item.pq.number}: open explanation`}
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

// ── Transcript panel (left column) ───────────────────────────────────────────

function TranscriptPanel({ sections, activeSection, onSectionChange, evidenceByEntry, openPopover, audioUrls }) {
  const sec = sections[activeSection]
  return (
    <div className="review-passage-col">
      <nav className="review-tabs" aria-label="Parts">
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

          {audioUrls[sec.id] && (
            <audio
              key={sec.id}
              className="review-audio"
              src={audioUrls[sec.id]}
              controls
              preload="none"
              aria-label={`${sec.title} audio`}
            />
          )}

          {sec.transcript?.map(entry => {
            const key = `${sec.id}:${entry.id}`
            const items = evidenceByEntry[key] ?? []
            return (
              <div
                key={entry.id}
                className={`transcript-entry ${items.length > 0 ? 'has-evidence' : ''}`}
              >
                <span className="transcript-speaker">{entry.speaker}</span>
                <span className="transcript-text">
                  {items.length > 0
                    ? renderWithHighlights(entry.text, items, openPopover)
                    : entry.text}
                </span>
              </div>
            )
          })}
        </div>
      )}
    </div>
  )
}

// ── Question list panel (right column) ───────────────────────────────────────

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
              const isActive = activePopoverNum === pq.number
              return (
                <div key={pq.number} className={`rl-row ${isActive ? 'rl-row-active' : ''}`}>
                  <span className="rl-qchip">Q{pq.number}</span>
                  <span className={`rl-mark ${pq.correct ? 'rl-correct' : 'rl-wrong'}`}>
                    {pq.correct ? '✓' : '✗'}
                  </span>
                  <span className="rl-answer">{formatAnswer(pq.answer)}</span>
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

export default function ListeningResults() {
  const { attemptId } = useParams()
  const navigate = useNavigate()

  const [attempt,        setAttempt]       = useState(null)
  const [test,           setTest]          = useState(null)
  const [loading,        setLoading]       = useState(true)
  const [loadError,      setLoadError]     = useState('')
  const [mode,           setMode]          = useState('results')
  const [reviewSection,  setReviewSection] = useState(0)
  const [popover,        setPopover]       = useState(null)
  const [audioUrls,      setAudioUrls]     = useState({})

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
      if (e1 || !att) { setLoadError('Results not found.'); setLoading(false); return }
      setAttempt(att)

      if (att.test_id) {
        const { data: t } = await supabase
          .from('tests')
          .select('content')
          .eq('id', att.test_id)
          .single()
        if (t?.content) {
          setTest(t.content)
          // Pre-fetch signed audio URLs for all 4 parts (used in review)
          const urls = {}
          for (const sec of t.content.sections ?? []) {
            if (sec.audioPath) {
              const { data: sd } = await supabase.storage
                .from('listening-audio')
                .createSignedUrl(sec.audioPath, 3600)
              if (sd?.signedUrl) urls[sec.id] = sd.signedUrl
            }
          }
          setAudioUrls(urls)
        }
      }
      setLoading(false)
    }
    load()
  }, [attemptId])

  if (loading) return <div className="lr-loading" aria-live="polite">Loading results…</div>

  if (loadError) {
    return (
      <div className="lr-page">
        <p className="lr-error" role="alert">{loadError}</p>
        <button className="btn btn-primary" onClick={() => navigate('/listening')}>
          Back to Listening
        </button>
      </div>
    )
  }

  const marked   = attempt.marked ?? {}
  const perQ     = marked.perQuestion ?? []
  const raw      = marked.raw   ?? attempt.raw_score ?? 0
  const total    = marked.total ?? 40
  const band     = marked.band  ?? attempt.band
  const sections = test?.sections ?? []

  const correctCount   = perQ.filter(q => q.correct).length
  const incorrectCount = perQ.filter(q => !q.correct).length

  // Build question metadata lookup: number → { ...q, sectionId, group }
  const qMeta = {}
  for (const sec of sections) {
    for (const grp of sec.groups ?? []) {
      for (const q of grp.questions ?? []) {
        qMeta[q.number] = { ...q, sectionId: sec.id, group: grp }
      }
    }
  }

  // ── Results view ───────────────────────────────────────────────────────────

  if (mode === 'results') {
    return (
      <div className="lr-page">
        <div className="lr-summary-card">
          <h1 className="lr-title">Listening Results</h1>

          <div className="lr-score-row">
            <div className="lr-score-block">
              <span className="lr-score-value">
                {raw}<span className="lr-score-denom">/{total}</span>
              </span>
              <span className="lr-score-label">Score</span>
            </div>
            {band != null && (
              <div className="lr-score-block">
                <span className="lr-score-value">{band}</span>
                <span className="lr-score-label">Band</span>
              </div>
            )}
          </div>

          {perQ.length > 0 && (
            <div className="lr-correct-row">
              <span className="lr-correct-chip correct">{correctCount} correct</span>
              <span className="lr-correct-chip incorrect">{incorrectCount} incorrect</span>
            </div>
          )}
        </div>

        {perQ.length > 0 && (
          <div className="lr-grid-card">
            <h2 className="lr-section-heading">Question results</h2>
            <div className="lr-question-grid">
              {perQ.map(q => (
                <div
                  key={q.number}
                  className={`lr-q-chip ${q.correct ? 'correct' : 'incorrect'}`}
                  title={`Q${q.number}: ${q.correct
                    ? 'Correct'
                    : `Your answer: "${q.given}" — Correct: ${Array.isArray(q.answer) ? q.answer.join('/') : q.answer}`}`}
                >
                  {q.number}
                </div>
              ))}
            </div>
          </div>
        )}

        <div className="lr-actions">
          <button className="btn btn-outline" onClick={() => navigate('/listening')}>
            ← Back to Listening
          </button>
          {perQ.length > 0 && sections.length > 0 && (
            <button
              className="btn btn-primary"
              onClick={() => { setMode('review'); setPopover(null); setReviewSection(0) }}
            >
              Review with transcript →
            </button>
          )}
        </div>
      </div>
    )
  }

  // ── Review view ────────────────────────────────────────────────────────────

  // Build evidence-by-entry lookup: "${sectionId}:${entryId}" → [{pq, meta}]
  const evidenceByEntry = {}
  for (const pq of perQ) {
    const meta = qMeta[pq.number]
    const ev   = meta?.evidence
    if (ev?.sectionId && ev?.ref && ev?.quote) {
      const key = `${ev.sectionId}:${ev.ref}`
      if (!evidenceByEntry[key]) evidenceByEntry[key] = []
      evidenceByEntry[key].push({ pq, meta })
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
        <span className="review-toolbar-title">Transcript review</span>
        <span className="review-toolbar-score">{raw} / {total} correct</span>
      </div>

      <div className="review-body">
        <TranscriptPanel
          sections={sections}
          activeSection={reviewSection}
          onSectionChange={i => { setReviewSection(i); setPopover(null) }}
          evidenceByEntry={evidenceByEntry}
          openPopover={openPopover}
          audioUrls={audioUrls}
        />
        <ReviewListPanel
          perQuestion={perQ}
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
