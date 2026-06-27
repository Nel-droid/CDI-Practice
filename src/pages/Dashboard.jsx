import { Link } from 'react-router-dom'
import './Dashboard.css'

export default function Dashboard() {
  return (
    <div className="dashboard">
      <h1 className="page-title">Dashboard</h1>
      <p className="page-subtitle">
        Choose a module to practise, or pick up where you left off.
      </p>

      <section aria-label="Practice modules">
        <div className="module-cards">
          <Link to="/reading" className="module-card module-reading">
            <div className="module-tag">Reading</div>
            <h2>Reading</h2>
            <p>Academic passages &mdash; 40 questions, 60 minutes</p>
            <span className="module-cta">Start a test &rarr;</span>
          </Link>

          <Link to="/listening" className="module-card module-listening">
            <div className="module-tag">Listening</div>
            <h2>Listening</h2>
            <p>Four sections &mdash; audio plays once, 40 questions</p>
            <span className="module-cta">Start a test &rarr;</span>
          </Link>

          <Link to="/writing" className="module-card module-writing">
            <div className="module-tag">Writing</div>
            <h2>Writing</h2>
            <p>Task 1, Task 2, or a full 60-minute test</p>
            <span className="module-cta">Start a task &rarr;</span>
          </Link>
        </div>
      </section>

      <section className="recent-results" aria-label="Recent results">
        <h2 className="section-title">Recent results</h2>
        <div className="empty-state">
          <p className="empty-icon">&#x1F4CB;</p>
          <p className="empty-heading">No tests taken yet</p>
          <p className="empty-body">
            Complete your first test above and your results will appear here.
          </p>
        </div>
      </section>
    </div>
  )
}
