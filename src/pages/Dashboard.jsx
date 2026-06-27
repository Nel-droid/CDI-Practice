import { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import { supabase } from '../lib/supabase'
import { useAuth } from '../context/AuthContext'
import './Dashboard.css'

export default function Dashboard() {
  const { user } = useAuth()
  const [attempts, setAttempts] = useState([])
  const [loadingAttempts, setLoadingAttempts] = useState(true)

  useEffect(() => {
    if (!user) return

    supabase
      .from('attempts')
      .select('id, skill, submitted_at, band, raw_score')
      .eq('user_id', user.id)
      .order('submitted_at', { ascending: false })
      .limit(10)
      .then(({ data }) => {
        setAttempts(data ?? [])
        setLoadingAttempts(false)
      })
  }, [user])

  return (
    <div className="dashboard">
      <h1 className="page-title">My Dashboard</h1>
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

        {loadingAttempts ? (
          <p className="loading-text">Loading your results&hellip;</p>
        ) : attempts.length === 0 ? (
          <div className="empty-state">
            <p className="empty-heading">No tests taken yet</p>
            <p className="empty-body">
              Complete your first test above and your results will appear here.
            </p>
          </div>
        ) : (
          <ul className="results-list">
            {attempts.map(a => (
              <li key={a.id} className="result-item">
                <span className={`result-skill ${a.skill}`}>{a.skill}</span>
                <span className="result-band">
                  {a.band != null ? `Band ${a.band}` : '—'}
                </span>
                <span className="result-score">
                  {a.raw_score != null ? `${a.raw_score}/40` : '—'}
                </span>
                <span className="result-date">
                  {a.submitted_at
                    ? new Date(a.submitted_at).toLocaleDateString()
                    : 'In progress'}
                </span>
              </li>
            ))}
          </ul>
        )}
      </section>
    </div>
  )
}
