import { useEffect, useState } from 'react'
import { useParams, useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import './ListeningResults.css'

export default function ListeningResults() {
  const { attemptId } = useParams()
  const navigate = useNavigate()
  const [attempt, setAttempt] = useState(null)
  const [loadError, setLoadError] = useState('')

  useEffect(() => {
    supabase
      .from('attempts')
      .select('raw_score, band, marked')
      .eq('id', attemptId)
      .single()
      .then(({ data, error }) => {
        if (error || !data) { setLoadError('Results not found.'); return }
        setAttempt(data)
      })
  }, [attemptId])

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

  if (!attempt) {
    return <div className="lr-loading" aria-live="polite">Loading results…</div>
  }

  const marked   = attempt.marked ?? {}
  const perQ     = marked.perQuestion ?? []
  const raw      = marked.raw   ?? attempt.raw_score ?? 0
  const total    = marked.total ?? 40
  const band     = marked.band  ?? attempt.band

  const correctCount   = perQ.filter(q => q.correct).length
  const incorrectCount = perQ.filter(q => !q.correct).length

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
                title={`Q${q.number}: ${q.correct ? 'Correct' : `Incorrect — you answered "${q.given}", correct answer: ${Array.isArray(q.answer) ? q.answer.join(' / ') : q.answer}`}`}
              >
                {q.number}
              </div>
            ))}
          </div>
          <p className="lr-review-note">
            Full answer review with transcript highlighting comes in the next update.
          </p>
        </div>
      )}

      <div className="lr-actions">
        <button className="btn btn-outline" onClick={() => navigate('/listening')}>
          ← Back to Listening
        </button>
      </div>

    </div>
  )
}
