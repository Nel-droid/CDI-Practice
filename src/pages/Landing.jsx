import { Link } from 'react-router-dom'
import './Landing.css'

export default function Landing() {
  return (
    <div className="landing">
      <header className="landing-header">
        <span className="landing-logo">CDI IELTS Practice</span>
        <Link to="/login" className="landing-login-link">Log in</Link>
      </header>

      <main className="landing-main">
        <section className="landing-hero">
          <h1 className="landing-title">IELTS Mock Tests — Online</h1>
          <p className="landing-subtitle">
            Practise Reading, Listening, and Writing under real exam conditions.
            Get instant scores and detailed explanations — completely free.
          </p>
          <div className="landing-actions">
            <Link to="/login?mode=signup" className="btn btn-primary btn-lg">
              Create a free account
            </Link>
            <Link to="/login" className="btn btn-outline btn-lg">
              Log in
            </Link>
          </div>
        </section>

        <section className="landing-features" aria-label="What you can practise">
          <div className="feature-card">
            <div className="feature-label reading">Reading</div>
            <h2>Reading</h2>
            <p>
              Three passages, 40 questions, 60-minute timer.
              Instant results with evidence highlights so you know exactly
              where the answer came from.
            </p>
          </div>
          <div className="feature-card">
            <div className="feature-label listening">Listening</div>
            <h2>Listening</h2>
            <p>
              Audio plays once, just like the real test.
              Full transcript shown in feedback with the key sentences
              highlighted.
            </p>
          </div>
          <div className="feature-card">
            <div className="feature-label writing">Writing</div>
            <h2>Writing</h2>
            <p>
              Task 1 charts, Task 2 essays, or a complete timed test.
              Download your work as a PDF with word count and time spent.
            </p>
          </div>
        </section>
      </main>

      <footer className="landing-footer">
        <p>Original practice material only &mdash; no Cambridge content.</p>
      </footer>
    </div>
  )
}
