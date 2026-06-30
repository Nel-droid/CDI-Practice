import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import '../reading/ReadingHome.css'
import './ListeningHome.css'

function countQuestions(content) {
  return (content?.sections ?? [])
    .flatMap(s => s.groups ?? [])
    .flatMap(g => g.questions ?? [])
    .length
}

export default function ListeningHome() {
  const { user } = useAuth()
  const navigate = useNavigate()

  const [tests, setTests] = useState([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [selectedBook, setSelectedBook] = useState(null)
  const [starting, setStarting] = useState(false)

  useEffect(() => {
    let query = supabase
      .from('tests')
      .select('id, skill, book, test_label, variant, duration_seconds, content, published')
      .eq('skill', 'listening')
      .order('book')
      .order('test_label')

    // Production: show published tests only.
    // Dev (import.meta.env.DEV): show all tests so drafts can be verified locally.
    if (!import.meta.env.DEV) {
      query = query.eq('published', true)
    }

    query.then(({ data, error: err }) => {
      if (err) setError('Could not load tests. Please try again.')
      else setTests(data ?? [])
      setLoading(false)
    })
  }, [])

  const books = tests.reduce((acc, t) => {
    if (!acc[t.book]) acc[t.book] = []
    acc[t.book].push(t)
    return acc
  }, {})
  const bookNames = Object.keys(books).sort()

  async function startTest(test) {
    if (starting) return
    setStarting(true)
    setError('')

    const { data: attempt, error: err } = await supabase
      .from('attempts')
      .insert({
        user_id: user.id,
        test_id: test.id,
        skill: 'listening',
        started_at: new Date().toISOString(),
      })
      .select('id')
      .single()

    if (err || !attempt) {
      setError('Could not start the test. Please try again.')
      setStarting(false)
      return
    }

    navigate(`/listening/exam/${test.id}?attempt=${attempt.id}`)
  }

  if (loading) {
    return (
      <div className="rh-loading" aria-live="polite">
        Loading available tests…
      </div>
    )
  }

  return (
    <div className="rh-page">
      <header className="rh-header">
        <h1 className="rh-title">Listening Practice</h1>
        <p className="rh-subtitle">
          Choose a test, then click Start. Audio plays once through all four
          parts — you have 30 minutes to complete your answers.
        </p>
      </header>

      {error && (
        <p className="rh-error" role="alert">{error}</p>
      )}

      {bookNames.length === 0 ? (
        <div className="rh-empty">
          <p className="rh-empty-title">No tests available yet</p>
          <p className="rh-empty-body">
            Run <code>supabase/phase5-seed.sql</code>, then either claim
            the draft by setting <code>created_by</code> to your user UUID
            (visible to you only) or set <code>published = true</code> to
            make it visible to all authenticated users.
          </p>
        </div>
      ) : (
        <div className="rh-books">
          {bookNames.map(book => (
            <div key={book} className="rh-book-section">
              <button
                className={`rh-book-btn ${selectedBook === book ? 'open' : ''}`}
                onClick={() => setSelectedBook(selectedBook === book ? null : book)}
                aria-expanded={selectedBook === book}
              >
                <span className="rh-book-icon">🎧</span>
                <span className="rh-book-name">{book}</span>
                <span className="rh-book-count">
                  {books[book].length} test{books[book].length !== 1 ? 's' : ''}
                </span>
                <span className="rh-chevron">{selectedBook === book ? '▲' : '▼'}</span>
              </button>

              {selectedBook === book && (
                <ul className="rh-test-list" role="list">
                  {books[book].map(test => (
                    <li key={test.id} className="rh-test-item">
                      <div className="rh-test-info">
                        <span className="rh-test-label">
                          {test.test_label}
                          {import.meta.env.DEV && !test.published && (
                            <span className="rh-draft-badge">DRAFT</span>
                          )}
                        </span>
                        <span className="rh-test-meta">
                          Academic Listening · {countQuestions(test.content)} questions · 30 min
                        </span>
                      </div>
                      <button
                        className="btn btn-primary rh-start-btn"
                        onClick={() => startTest(test)}
                        disabled={starting}
                        aria-label={`Start ${test.test_label} from ${book}`}
                      >
                        {starting ? 'Starting…' : 'Start test →'}
                      </button>
                    </li>
                  ))}
                </ul>
              )}
            </div>
          ))}
        </div>
      )}

      <div className="rh-tips">
        <h2 className="rh-tips-title">Before you begin</h2>
        <ul className="rh-tips-list">
          <li>Make sure your speakers or headphones are working before you start.</li>
          <li>Audio plays once only — you cannot pause, rewind, or replay during the test.</li>
          <li>You can switch between Part tabs at any time while the audio plays.</li>
          <li>The test auto-submits when the 30-minute timer reaches zero.</li>
        </ul>
      </div>
    </div>
  )
}
