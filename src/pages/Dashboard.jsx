import { useState } from 'react'
import { Link } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import { useAttempts } from '../lib/useAttempts'
import { useTargetBand } from '../lib/useTargetBand'
import BandRule from '../components/BandRule'
import BandTrendChart from '../components/charts/BandTrendChart'
import TypeAccuracyChart from '../components/charts/TypeAccuracyChart'
import { Skeleton } from '../components/Skeleton'
import {
  bandTrend,
  bandDelta,
  accuracyByType,
  currentStreak,
  targetProgress,
  completedAttempts,
} from '../lib/analytics/progress'
import './Dashboard.css'

const TARGET_CHOICES = [5.5, 6, 6.5, 7, 7.5, 8, 8.5]

function relativeDate(iso) {
  if (!iso) return null
  const d = new Date(iso)
  const diffDays = Math.floor((new Date() - d) / 86400000)
  if (diffDays < 1) return 'Today'
  if (diffDays === 1) return 'Yesterday'
  if (diffDays < 7) return `${diffDays} days ago`
  return d.toLocaleDateString('en-GB', { day: 'numeric', month: 'short', year: 'numeric' })
}

function bandClass(band) {
  if (band >= 7) return 'band-hi'
  if (band >= 5) return 'band-mid'
  return 'band-lo'
}

function greeting() {
  const h = new Date().getHours()
  if (h < 12) return 'Good morning'
  if (h < 18) return 'Good afternoon'
  return 'Good evening'
}

const MODULES = [
  { key: 'r', to: '/reading',   tag: 'Reading',   title: 'Academic Reading',
    desc: 'Three passages · 40 questions · 60 minutes' },
  { key: 'l', to: '/listening', tag: 'Listening', title: 'Academic Listening',
    desc: 'Four sections · 40 questions · Audio plays once' },
  { key: 'w', to: '/writing',   tag: 'Writing',   title: 'Academic Writing',
    desc: 'Task 1 charts · Task 2 essays · Full timed test' },
]

export default function Dashboard() {
  const { user } = useAuth()
  const { attempts, loading } = useAttempts(user)
  const [target, saveTarget] = useTargetBand(user)
  const [editingTarget, setEditingTarget] = useState(false)

  const displayName =
    user?.user_metadata?.display_name ||
    user?.user_metadata?.full_name?.split(' ')[0] ||
    user?.email?.split('@')[0] ||
    'there'

  const done     = completedAttempts(attempts)
  const trend    = bandTrend(attempts)
  const weakest  = accuracyByType(attempts)
  const streak   = currentStreak(attempts)
  const progress = targetProgress(attempts, target)
  const rDelta   = bandDelta(attempts, 'reading')
  const lDelta   = bandDelta(attempts, 'listening')
  const hasTrend = Object.values(trend).some(s => s.length > 1)
  // Only finished tests belong in "Recent results". Abandoned in-progress
  // attempts (started, never submitted) would otherwise sort to the top —
  // Postgres orders NULL submitted_at first under DESC — and sit there forever
  // as stale "In progress" rows. `done` is already newest-completed-first.
  const recent   = done.slice(0, 6)

  return (
    <div className="dash">
      {/* ── Greeting ─────────────────────────────────────────────────────── */}
      <header className="dash-top">
        <div>
          <h1 className="dash-hello">
            {greeting()}, <span className="dash-name">{displayName}.</span>
          </h1>
          <p className="dash-sub">
            {done.length === 0
              ? 'Set a target band, then sit your first test.'
              : `${done.length} test${done.length === 1 ? '' : 's'} completed.`}
          </p>
        </div>

        {done.length > 0 && (
          <div className="dash-stats">
            <div className="dash-stat">
              <span className="dash-stat-val num">{done.length}</span>
              <span className="dash-stat-lbl">Completed</span>
            </div>
            <div className="dash-stat">
              <span className="dash-stat-val num">{streak}</span>
              <span className="dash-stat-lbl">Day streak</span>
            </div>
            {progress.perSkill.reading != null && (
              <div className="dash-stat dash-stat--r">
                <span className="dash-stat-val num">{progress.perSkill.reading}</span>
                <span className="dash-stat-lbl">Best Reading</span>
              </div>
            )}
            {progress.perSkill.listening != null && (
              <div className="dash-stat dash-stat--l">
                <span className="dash-stat-val num">{progress.perSkill.listening}</span>
                <span className="dash-stat-lbl">Best Listening</span>
              </div>
            )}
          </div>
        )}
      </header>

      {/* ── Target instrument ────────────────────────────────────────────── */}
      <section className="dash-target" aria-labelledby="dash-target-h">
        <div className="dash-target-head">
          <div>
            <p className="dash-kicker num">Your target</p>
            <h2 id="dash-target-h" className="dash-target-line">
              {target == null
                ? 'Which band do you need?'
                : progress.current == null
                  ? <>Aiming for band <strong className="num">{target}</strong>.</>
                  : progress.reached
                    ? <>You have reached band <strong className="num">{target}</strong>.</>
                    : <><strong className="num">{progress.gap}</strong> to go &mdash; you
                        are at <strong className="num">{progress.current}</strong>, aiming
                        for <strong className="num">{target}</strong>.</>}
            </h2>
          </div>
          <button
            className="btn btn-outline dash-target-btn"
            onClick={() => setEditingTarget(v => !v)}
            aria-expanded={editingTarget}
          >
            {target == null ? 'Set target' : 'Change'}
          </button>
        </div>

        {editingTarget && (
          <div className="dash-target-picker" role="group" aria-label="Choose a target band">
            {TARGET_CHOICES.map(b => (
              <button
                key={b}
                className={'dash-target-opt num' + (target === b ? ' is-active' : '')}
                onClick={() => { saveTarget(b); setEditingTarget(false) }}
                aria-pressed={target === b}
              >
                {b}
              </button>
            ))}
          </div>
        )}

        <BandRule current={progress.current} target={target} />

        {progress.current != null && (
          <p className="dash-target-note">
            Your overall figure is the mean of your best Reading and Listening
            bands, rounded to the nearest half band.
          </p>
        )}
      </section>

      {/* ── Analytics ────────────────────────────────────────────────────── */}
      {done.length > 0 && (
        <section className="dash-panels" aria-label="Your progress">
          <article className="dash-panel">
            <div className="dash-panel-head">
              <h2>Band over time</h2>
              <div className="dash-deltas">
                {rDelta != null && <Delta label="Reading" value={rDelta} />}
                {lDelta != null && <Delta label="Listening" value={lDelta} />}
              </div>
            </div>
            {hasTrend ? (
              <BandTrendChart trend={trend} target={target} />
            ) : (
              <p className="dash-panel-empty">
                Sit one more test and your trend line appears here.
              </p>
            )}
          </article>

          <article className="dash-panel">
            <div className="dash-panel-head">
              <h2>Focus next</h2>
            </div>
            {weakest.length > 0 ? (
              <TypeAccuracyChart rows={weakest} />
            ) : (
              <p className="dash-panel-empty">
                Complete a Reading or Listening test to see which question types
                cost you marks.
              </p>
            )}
          </article>
        </section>
      )}

      {/* ── Modules ──────────────────────────────────────────────────────── */}
      <section aria-label="Practice modules">
        <h2 className="dash-section-title">Practise</h2>
        <div className="dash-modules">
          {MODULES.map(m => (
            <Link key={m.key} to={m.to} className={`dash-mod dash-mod--${m.key}`} data-ghost={m.key.toUpperCase()}>
              <div className="dash-mod-body">
                <span className="dash-mod-tag">{m.tag}</span>
                <h3 className="dash-mod-heading">{m.title}</h3>
                <p className="dash-mod-desc">{m.desc}</p>
                <span className="dash-mod-cta">Start a test →</span>
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* ── Recent results ───────────────────────────────────────────────── */}
      <section aria-label="Recent results">
        <h2 className="dash-section-title">Recent results</h2>

        {loading ? (
          <div className="dash-results-skel">
            {[0, 1, 2].map(i => (
              <div key={i} className="dash-result-skel">
                <Skeleton w="84px" h="1.4rem" radius="4px" />
                <Skeleton w="2.5rem" h="1.2rem" radius="4px" />
                <Skeleton w="3rem" h="0.9rem" />
                <Skeleton w="4rem" h="0.9rem" className="dash-skel-push" />
              </div>
            ))}
          </div>
        ) : recent.length === 0 ? (
          <div className="dash-empty">
            <p className="dash-empty-head">No tests yet</p>
            <p className="dash-empty-body">
              Your first result will appear here with a full breakdown.
            </p>
            <Link to="/reading" className="btn btn-primary">Start a Reading test</Link>
          </div>
        ) : (
          <ul className="dash-results">
            {recent.map(a => (
              <li key={a.id}>
                {/* Each row links back to its full result + review. Only
                    reading/listening live in `attempts`, so the skill maps
                    straight to its results route. */}
                <Link className="dash-result" to={`/${a.skill}/results/${a.id}`}>
                  <span className={`dash-skill-tag dash-skill-tag--${a.skill}`}>{a.skill}</span>
                  <div className="dash-result-info">
                    {a.band != null && (
                      <span className={`dash-band-pill num ${bandClass(a.band)}`}>{a.band}</span>
                    )}
                    {a.raw_score != null && (
                      <span className="dash-raw num">{a.raw_score}/40</span>
                    )}
                  </div>
                  <span className="dash-result-date">{relativeDate(a.submitted_at)}</span>
                  <span className="dash-result-arrow" aria-hidden="true">→</span>
                </Link>
              </li>
            ))}
          </ul>
        )}
      </section>
    </div>
  )
}

function Delta({ label, value }) {
  const dir = value > 0 ? 'up' : value < 0 ? 'down' : 'flat'
  const sign = value > 0 ? '+' : ''
  return (
    <span className={`dash-delta dash-delta--${dir}`}>
      {label} <span className="num">{sign}{value}</span>
    </span>
  )
}
