import { useState } from 'react'
import { getWritingFeedback } from '../../lib/ai/aiClient'
import './WritingFeedback.css'

function bandClass(band) {
  const n = Number(band)
  if (n >= 7) return 'is-high'
  if (n >= 5.5) return 'is-mid'
  return 'is-low'
}

/**
 * AI writing assessment card. Shows a "Get feedback" button; on request it
 * calls our /api/writing-feedback endpoint and renders the examiner-style
 * result — an estimated band, the four criteria, strengths, next steps, and
 * a few concrete corrections.
 */
export function WritingFeedback({ task, promptText, essay, minWords, onResult }) {
  const [state, setState] = useState('idle') // idle | loading | done | error
  const [feedback, setFeedback] = useState(null)
  const [error, setError] = useState('')

  async function run() {
    setState('loading'); setError('')
    try {
      const fb = await getWritingFeedback({ task, promptText, essay, minWords })
      setFeedback(fb)
      setState('done')
      onResult?.(fb)
    } catch (e) {
      setError(e.message)
      setState('error')
    }
  }

  return (
    <div className="aiwf-card">
      <div className="aiwf-head">
        <div>
          <h2 className="aiwf-title">AI feedback</h2>
          <p className="aiwf-sub">An examiner-style practice assessment against the four IELTS criteria.</p>
        </div>
        {state !== 'done' && (
          <button className="btn btn-primary aiwf-run" onClick={run} disabled={state === 'loading'}>
            {state === 'loading' ? 'Assessing…' : 'Get AI feedback'}
          </button>
        )}
      </div>

      {state === 'loading' && (
        <p className="aiwf-loading" aria-live="polite">Reading your response and marking it — about 10 seconds…</p>
      )}

      {state === 'error' && (
        <div className="aiwf-error" role="alert">
          <p>{error}</p>
          <button className="btn btn-outline" onClick={run}>Try again</button>
        </div>
      )}

      {state === 'done' && feedback && (
        <div className="aiwf-result">
          <div className="aiwf-band-row">
            <div className={`aiwf-band ${bandClass(feedback.estimatedBand)}`}>
              <span className="aiwf-band-num num">{feedback.estimatedBand}</span>
              <span className="aiwf-band-lab">estimated band</span>
            </div>
            {feedback.summary && <p className="aiwf-summary">{feedback.summary}</p>}
          </div>

          <div className="aiwf-criteria">
            {(feedback.criteria || []).map((c, i) => (
              <div className="aiwf-crit" key={i}>
                <div className="aiwf-crit-top">
                  <span className="aiwf-crit-name">{c.name}</span>
                  <span className={`aiwf-crit-band num ${bandClass(c.band)}`}>{c.band}</span>
                </div>
                <p className="aiwf-crit-comment">{c.comment}</p>
              </div>
            ))}
          </div>

          <div className="aiwf-cols">
            {feedback.strengths?.length > 0 && (
              <div className="aiwf-list aiwf-list--good">
                <h3>What worked</h3>
                <ul>{feedback.strengths.map((s, i) => <li key={i}>{s}</li>)}</ul>
              </div>
            )}
            {feedback.improvements?.length > 0 && (
              <div className="aiwf-list aiwf-list--work">
                <h3>Focus next on</h3>
                <ul>{feedback.improvements.map((s, i) => <li key={i}>{s}</li>)}</ul>
              </div>
            )}
          </div>

          {feedback.corrections?.length > 0 && (
            <div className="aiwf-corrections">
              <h3>Sentence upgrades</h3>
              {feedback.corrections.map((c, i) => (
                <div className="aiwf-corr" key={i}>
                  <p className="aiwf-corr-from">{c.original}</p>
                  <p className="aiwf-corr-to">{c.better}</p>
                  {c.why && <p className="aiwf-corr-why">{c.why}</p>}
                </div>
              ))}
            </div>
          )}

          <p className="aiwf-disclaimer">
            This is an AI practice estimate to guide your revision — not an official IELTS score.
          </p>
        </div>
      )}
    </div>
  )
}
