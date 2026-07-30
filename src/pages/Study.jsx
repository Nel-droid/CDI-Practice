import { useState } from 'react'
import { Link } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import { useAttempts } from '../lib/useAttempts'
import { useTargetBand } from '../lib/useTargetBand'
import BandRule from '../components/BandRule'
import TypeAccuracyChart from '../components/charts/TypeAccuracyChart'
import { SkeletonPanel } from '../components/Skeleton'
import {
  completedAttempts,
  accuracyByType,
  targetProgress,
  readiness,
  bestBands,
} from '../lib/analytics/progress'
import './Study.css'

const TARGET_CHOICES = [5.5, 6, 6.5, 7, 7.5, 8, 8.5]
const SKILL_LABEL = { reading: 'Reading', listening: 'Listening' }

function relDate(iso) {
  const d = Math.floor((Date.now() - new Date(iso)) / 86400000)
  if (d < 1) return 'Today'
  if (d === 1) return 'Yesterday'
  if (d < 7) return `${d} days ago`
  return new Date(iso).toLocaleDateString('en-GB', { day: 'numeric', month: 'short' })
}

function bandClass(b) {
  if (b >= 7) return 'band-hi'
  if (b >= 5) return 'band-mid'
  return 'band-lo'
}

/**
 * The coach. One question — "are you on track?" — answered by the band rule
 * carrying three points (where you are, where your trend is heading, where you
 * need to be), then a single clear thing to work on next.
 */
export default function Study() {
  const { user } = useAuth()
  const { attempts, loading } = useAttempts(user)
  const [target, saveTarget] = useTargetBand(user)

  const done = completedAttempts(attempts)
  const progress = targetProgress(attempts, target)
  const status = readiness(attempts, target)
  const weakest = accuracyByType(attempts)
  const best = bestBands(attempts)

  // Which skill to send them to: the one with the lower best band (most to gain).
  const focusSkill =
    best.reading == null ? 'listening'
    : best.listening == null ? 'reading'
    : best.listening < best.reading ? 'listening' : 'reading'
  const topWeak = weakest[0]

  return (
    <div className="study">
      <header className="study-head">
        <p className="study-kicker num">Coach</p>
        <h1 className="study-title">{headline(status.state)}</h1>
        <p className="study-verdict">{verdict(status, target, progress)}</p>
      </header>

      {loading ? (
        <SkeletonPanel lines={4} />
      ) : done.length === 0 ? (
        <EmptyState target={target} saveTarget={saveTarget} />
      ) : (
        <>
          {/* ── Readiness gauge ─────────────────────────────────────────── */}
          <section className="study-gauge" aria-label="Your readiness">
            <BandRule current={progress.current} predicted={status.predicted} target={target} />

            <div className="study-legend">
              <span className="study-leg"><span className="study-leg-dot study-leg-dot--now" /> Now
                {progress.current != null && <b className="num"> {progress.current}</b>}</span>
              {status.predicted != null && status.predicted > (progress.current ?? 0) && (
                <span className="study-leg"><span className="study-leg-dot study-leg-dot--pred" /> Trend
                  <b className="num"> {status.predicted}</b></span>
              )}
              {target != null && (
                <span className="study-leg"><span className="study-leg-dash" /> Target
                  <b className="num"> {target}</b></span>
              )}
              <button className="study-target-edit" onClick={() => saveTarget(null)}>
                {target == null ? '' : 'Reset target'}
              </button>
            </div>

            {target == null && (
              <div className="study-target-picker" role="group" aria-label="Set a target band">
                <span className="study-picker-label">Set your target:</span>
                {TARGET_CHOICES.map(b => (
                  <button key={b} className="study-target-opt num" onClick={() => saveTarget(b)}>{b}</button>
                ))}
              </div>
            )}
          </section>

          {/* ── What to work on ─────────────────────────────────────────── */}
          <section className="study-panels">
            <article className="study-panel study-focus">
              <p className="study-panel-kicker num">Work on this next</p>
              {topWeak ? (
                <>
                  <h2 className="study-focus-h">
                    {topWeak.type}
                    <span className="study-focus-acc num">{Math.round(topWeak.accuracy * 100)}%</span>
                  </h2>
                  <p className="study-focus-note">
                    Your weakest task type — {topWeak.correct} right of {topWeak.total} attempted.
                    {' '}{SKILL_LABEL[focusSkill]} is your lower band, so start there.
                  </p>
                  <Link to={`/${focusSkill}`} className="btn btn-primary">
                    Practise {SKILL_LABEL[focusSkill]} →
                  </Link>
                </>
              ) : (
                <p className="study-focus-note">
                  Finish a Reading or Listening test and your weakest task types show up here.
                </p>
              )}
            </article>

            <article className="study-panel">
              <p className="study-panel-kicker num">Accuracy by task type</p>
              {weakest.length > 0
                ? <TypeAccuracyChart rows={weakest} limit={8} />
                : <p className="study-focus-note">No task-type data yet.</p>}
            </article>
          </section>

          {/* ── Revisit past results ────────────────────────────────────── */}
          {done.length > 0 && (
            <section aria-label="Past results">
              <h2 className="study-section-h">Revisit a result</h2>
              <ul className="study-results">
                {done.slice(0, 8).map(a => (
                  <li key={a.id}>
                    <Link className="study-result" to={`/${a.skill}/results/${a.id}`}>
                      <span className={`study-skill study-skill--${a.skill}`}>{a.skill}</span>
                      <span className={`study-band num ${bandClass(a.band)}`}>{a.band}</span>
                      <span className="study-raw num">{a.raw_score}/40</span>
                      <span className="study-date">{relDate(a.submitted_at)}</span>
                      <span className="study-arrow" aria-hidden="true">→</span>
                    </Link>
                  </li>
                ))}
              </ul>
            </section>
          )}
        </>
      )}
    </div>
  )
}

function headline(state) {
  switch (state) {
    case 'reached':   return 'Target reached.'
    case 'on-track':  return "You're on track."
    case 'close':     return 'Almost there.'
    case 'behind':    return 'Work to do — here’s where.'
    case 'no-target': return 'Set a target to aim at.'
    default:          return 'Your readiness, once you start.'
  }
}

function verdict(status, target, progress) {
  const { state, predicted, gap } = status
  switch (state) {
    case 'reached':
      return `You've hit band ${target}. Keep sitting tests to hold it steady.`
    case 'on-track':
      return `At your current rate your next test should reach band ${predicted}, meeting your ${target} target.`
    case 'close':
      return `Just ${gap} to go. A focused push on your weak task types should close it.`
    case 'behind':
      return `${gap} to go to band ${target}. Target your weakest task types to move the needle fastest.`
    case 'no-target':
      return 'Choose the band you need and the coach will tell you whether your trend is getting you there.'
    default:
      return 'Sit a Reading or Listening test and this page will track how close you are to your target.'
  }
}

function EmptyState({ target, saveTarget }) {
  return (
    <div className="study-empty">
      <p className="study-empty-head">No tests yet</p>
      <p className="study-empty-body">
        Sit your first Reading or Listening test. The coach then shows your band,
        where your trend is heading, and the one task type to work on next.
      </p>
      {target == null && (
        <div className="study-target-picker" role="group" aria-label="Set a target band">
          <span className="study-picker-label">First, set your target:</span>
          {TARGET_CHOICES.map(b => (
            <button key={b} className="study-target-opt num" onClick={() => saveTarget(b)}>{b}</button>
          ))}
        </div>
      )}
      <Link to="/reading" className="btn btn-primary">Start a Reading test</Link>
    </div>
  )
}
