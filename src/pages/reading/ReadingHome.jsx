import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import './ReadingHome.css'

function countQuestions(content) {
  return (content?.sections ?? [])
    .flatMap(s => s.groups ?? [])
    .flatMap(g => g.questions ?? [])
    .length
}

export default function ReadingHome() {
  const { user } = useAuth()
  const navigate = useNavigate()

  const [tests, setTests] = useState([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [selectedBook, setSelectedBook] = useState(null)
  const [starting, setStarting] = useState(false)

  useEffect(() => {
    supabase
      .from('tests')
      .select('id, skill, book, test_label, variant, duration_seconds, content')
      .eq('skill', 'reading')
      .eq('published', true)
      .order('book')
      .order('test_label')
      .then(({ data, error: err }) => {
        if (err) setError('Could not load tests. Please try again.')
        else setTests(data ?? [])
        setLoading(false)
      })
  }, [])

  // Group tests by book
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
        skill: 'reading',
        started_at: new Date().toISOString(),
      })
      .select('id')
      .single()

    if (err || !attempt) {
      setError('Could not start the test. Please try again.')
      setStarting(false)
      return
    }

    navigate(`/reading/exam/${test.id}?attempt=${attempt.id}`)
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
        <h1 className="rh-title">Reading Practice</h1>
        <p className="rh-subtitle">
          Choose a test book, then select Test 1–4 to begin. You will have
          60 minutes to complete a full Academic Reading test across three passages.
        </p>
      </header>

      {error && (
        <p className="rh-error" role="alert">{error}</p>
      )}

      {bookNames.length === 0 ? (
        <div className="rh-empty">
          <p className="rh-empty-title">No tests available yet</p>
          <p className="rh-empty-body">
            Run <code>supabase/phase4-seed.sql</code> in your Supabase SQL
            Editor to add the placeholder test, then refresh this page.
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
                <span className="rh-book-icon">📖</span>
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
                        <span className="rh-test-label">{test.test_label}</span>
                        <span className="rh-test-meta">
                          Academic Reading · {countQuestions(test.content)} questions · 60 min
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
          <li>The timer starts the moment you click <strong>Start test</strong>.</li>
          <li>You can flag any question and return to it from the question palette.</li>
          <li>Switch between passages at any time using the passage tabs.</li>
          <li>The test auto-submits when the 60-minute timer reaches zero.</li>
        </ul>
      </div>
    </div>
  )
}
