import { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import { ThemeToggle } from '../components/ThemeToggle'
import { Logo } from '../components/Logo'
import { TelegramLink } from '../components/TelegramLink'
import './Landing.css'

const LOGO_HOLD = 3400   // ms animation plays before fade
const LOGO_OUT  = 500    // ms fade-out before landing page appears

// Evaluated once at module load — immune to React Strict Mode's double-invoke
const _alreadySeen = sessionStorage.getItem('cdi-intro') === '1'
if (!_alreadySeen) sessionStorage.setItem('cdi-intro', '1')

// The nine IELTS bands. Whole bands get a labelled major tick; the half band
// between each gets a minor tick, mirroring how the scale is actually reported.
const BANDS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

const MODULES = [
  { key: 'r', name: 'Reading',   count: '40',      unit: 'questions', time: '60 min', shape: '3 passages' },
  { key: 'l', name: 'Listening', count: '40',      unit: 'questions', time: '30 min', shape: '4 sections' },
  { key: 'w', name: 'Writing',   count: '2',       unit: 'tasks',     time: '60 min', shape: 'Task 1 + Task 2' },
]

export default function Landing() {
  const [phase, setPhase] = useState(_alreadySeen ? 'gone' : 'logo')

  useEffect(() => {
    let t
    if      (phase === 'logo')     t = setTimeout(() => setPhase('logo-out'), LOGO_HOLD)
    else if (phase === 'logo-out') t = setTimeout(() => setPhase('gone'),     LOGO_OUT)
    return () => clearTimeout(t)
  }, [phase])

  const hidden = phase !== 'gone'

  return (
    <div className="landing">

      {/* ── Logo splash ────────────────────────────────────────────────────── */}
      {hidden && (
        <div className={'logo-splash' + (phase === 'logo-out' ? ' logo-splash--out' : '')}>
          <div className="ls-glow" />
          <div className="ls-mark">
            <svg viewBox="0 0 44 44" aria-hidden="true">
              <path
                className="ls-arc"
                fill="none" stroke="rgba(255,255,255,0.82)" strokeWidth="9" strokeLinecap="butt"
                d="M 34,12 A 16,16 0 1,0 34,32"
              />
              <rect className="ls-bar ls-bar-r" fill="#5A9BFF" x="11" y="25" width="7" height="8"  rx="1" />
              <rect className="ls-bar ls-bar-l" fill="#34D399" x="19" y="18" width="7" height="15" rx="1" />
              <rect className="ls-bar ls-bar-w" fill="#FBBF24" x="27" y="11" width="7" height="22" rx="1" />
            </svg>
          </div>
          <div className="ls-name">CDI Practice</div>
        </div>
      )}

      {/* ── Main landing page ──────────────────────────────────────────────── */}
      <div
        className="landing-body"
        {...(hidden ? { 'aria-hidden': 'true', inert: '' } : {})}
      >
        <header className="l-nav on-ink">
          <Link to="/" className="l-logo">
            <Logo size={28} className="logo-mark--inv" />
            <span>CDI Practice</span>
          </Link>
          <div className="l-nav-right">
            <ThemeToggle />
            <Link to="/login" className="l-signin">Sign in</Link>
            <Link to="/login?mode=signup" className="l-cta-nav">Create account</Link>
          </div>
        </header>

        {/* ── Hero ─────────────────────────────────────────────────────────── */}
        <section className="l-hero on-ink" aria-labelledby="l-headline">
          <div className="l-hero-inner">
            <div className="l-copy">
              <p className="l-eyebrow num">Computer-delivered IELTS Academic</p>
              <h1 className="l-headline" id="l-headline">
                Know exactly why<br />
                <em>every mark was given.</em>
              </h1>
              <p className="l-tagline">
                Authentic Cambridge Reading, Listening and Writing under real exam
                conditions — and every answer marked against the passage line that
                proves it.
              </p>
              <div className="l-ctas">
                <Link to="/login?mode=signup" className="l-cta-primary">Create a free account</Link>
                <Link to="/login" className="l-cta-ghost">Sign in</Link>
              </div>
            </div>

            {/* The product's actual differentiator, shown rather than claimed:
                an answer traced back to the line of the passage that proves it. */}
            <figure className="l-proof" aria-label="Example of evidence-based marking">
              <figcaption className="l-proof-bar">
                <span className="l-proof-where">Reading · Passage 2</span>
                <span className="l-proof-timer num">38:14</span>
              </figcaption>

              <div className="l-proof-passage">
                <p>
                  The Step Pyramid was a revolutionary advance in architecture and
                  <mark> became the archetype which all the other great pyramid
                  builders of Egypt would follow.</mark>
                </p>
              </div>

              <div className="l-proof-q">
                <p className="l-proof-qtext">
                  <span className="num l-proof-qn">20</span>
                  Paragraph G
                </p>
                <div className="l-proof-answer">
                  <span className="l-proof-given num">vi</span>
                  <span className="l-proof-verdict">Correct</span>
                </div>
              </div>

              <p className="l-proof-note">
                Every question links to the sentence that justifies the key.
              </p>
            </figure>
          </div>
        </section>

        {/* ── Signature: the band rule ─────────────────────────────────────── */}
        <section className="l-scale" aria-labelledby="l-scale-h">
          <div className="l-scale-head">
            <p className="l-kicker num">Band scale</p>
            <h2 id="l-scale-h">The scale you are measured on</h2>
            <p className="l-scale-sub">
              IELTS reports every module from 0 to 9, in half bands. Knowing the
              number you need is the difference between practising and preparing.
            </p>
          </div>

          <div className="l-rule" role="img"
               aria-label="IELTS band scale from 0 to 9. Most university offers fall between 6.5 and 7.5.">
            <div className="l-rule-target">
              <span className="l-rule-target-label num">6.5&ndash;7.5</span>
            </div>
            <div className="l-rule-ticks">
              {BANDS.map((b, i) => (
                <div className="l-tick-group" key={b}>
                  <span className="l-tick l-tick--major" />
                  <span className="l-tick-label num">{b}</span>
                  {i < BANDS.length - 1 && <span className="l-tick l-tick--minor" />}
                </div>
              ))}
            </div>
          </div>

          <dl className="l-bands">
            <div className="l-band">
              <dt className="num">6.0 &ndash; 6.5</dt>
              <dd>Most undergraduate offers</dd>
            </div>
            <div className="l-band l-band--target">
              <dt className="num">7.0 &ndash; 7.5</dt>
              <dd>Most postgraduate offers</dd>
            </div>
            <div className="l-band">
              <dt className="num">8.0 +</dt>
              <dd>Professional registration and the highest visa streams</dd>
            </div>
          </dl>
        </section>

        {/* ── What you sit ─────────────────────────────────────────────────── */}
        <section className="l-modules" aria-labelledby="l-modules-h">
          <h2 id="l-modules-h" className="l-sec-h">What you sit</h2>
          <table className="l-spec">
            <thead>
              <tr>
                <th scope="col">Module</th>
                <th scope="col">Length</th>
                <th scope="col">Time</th>
                <th scope="col">Format</th>
              </tr>
            </thead>
            <tbody>
              {MODULES.map(m => (
                <tr key={m.key}>
                  <th scope="row">
                    <span className={`l-mod-tick l-mod-tick--${m.key}`} aria-hidden="true" />
                    {m.name}
                  </th>
                  <td><span className="num">{m.count}</span> {m.unit}</td>
                  <td className="num">{m.time}</td>
                  <td>{m.shape}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </section>

        {/* ── How it works ─────────────────────────────────────────────────── */}
        <section className="l-features" aria-labelledby="l-features-h">
          <h2 id="l-features-h" className="l-sec-h">How the marking works</h2>
          <div className="l-feat-grid">
            <article className="l-feat">
              <h3>Marked against the passage</h3>
              <p>
                Each answer is cross-referenced with the exact passage or transcript
                line, highlighted in context, so a wrong answer teaches you something.
              </p>
            </article>
            <article className="l-feat">
              <h3>Real exam constraints</h3>
              <p>
                Countdown timers, single audio playback and locked navigation — the
                conditions of the real test, not a relaxed imitation of it.
              </p>
            </article>
            <article className="l-feat">
              <h3>Band score on submit</h3>
              <p>
                Your raw score converts to a band immediately, broken down by section,
                question type and where the time went.
              </p>
            </article>
          </div>
        </section>

        {/* ── Close ────────────────────────────────────────────────────────── */}
        <section className="l-close on-ink">
          <h2>Start with a full Reading test.</h2>
          <p>Free account, no card. Your first band score in about an hour.</p>
          <Link to="/login?mode=signup" className="l-cta-primary">Create a free account</Link>
        </section>

        <footer className="l-foot on-ink">
          <div className="l-foot-logo">
            <Logo size={18} className="logo-mark--inv" />
            <span>CDI Practice</span>
          </div>
          <p>Authentic IELTS practice material — real exam conditions, real results.</p>
          <TelegramLink className="l-foot-tg" />
        </footer>
      </div>
    </div>
  )
}
