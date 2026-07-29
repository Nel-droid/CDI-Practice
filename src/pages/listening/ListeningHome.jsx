import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { useTestHistory } from '../../lib/useTestHistory'
import { TestCard } from '../../components/TestCard'
import '../reading/ReadingHome.css'
import './ListeningHome.css'

function countQuestions(content) {
  return (content?.sections ?? [])
    .flatMap(s => s.groups ?? [])
    .flatMap(g => g.questions ?? [])
    .length
}

// Generic section labels — never the real recording topics.
function partLabels(content) {
  const n = (content?.sections ?? []).length || 4
  return Array.from({ length: n }, (_, i) => `Part ${i + 1}`)
}

export default function ListeningHome() {
  const { user } = useAuth()
  const navigate = useNavigate()

  const [tests, setTests] = useState([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [selectedBook, setSelectedBook] = useState(null)
  const [starting, setStarting] = useState(false)
  const { history } = useTestHistory(user, 'listening')

  useEffect(() => {
    let query = supabase
      .from('tests')
      .select('id, skill, book, test_label, variant, duration_seconds, content, published')
      .eq('skill', 'listening')
      .order('book')
      .order('test_label')

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

  // ── Book landing ──────────────────────────────────────────────────────────
  if (selectedBook === null) {
    return (
      <div className="rh-page rh-page--wide" data-skill="listening">
        <header className="rh-header">
          <h1 className="rh-title">Listening Practice</h1>
          <p className="rh-subtitle">
            Choose a test collection to begin. Audio plays once through all
            four parts — you have 30 minutes to complete your answers.
          </p>
        </header>

        {error && <p className="rh-error" role="alert">{error}</p>}

        {bookNames.length === 0 ? (
          <div className="rh-empty">
            <p className="rh-empty-title">No tests available yet</p>
            <p className="rh-empty-body">
              Run <code>supabase/phase5-seed.sql</code>, then either claim
              the draft by setting <code>created_by</code> to your user UUID
              or set <code>published = true</code> to make it visible to all
              authenticated users.
            </p>
          </div>
        ) : (
          <div className="rh-book-grid">
            {bookNames.map(book => (
              <button key={book} className="rh-book-card" onClick={() => setSelectedBook(book)}>
                <span className="rh-bc-ghost" aria-hidden="true">{book.match(/\d+/)?.[0]}</span>
                <div className="rh-bc-body">
                  <div className="rh-bc-name">{book}</div>
                  <div className="rh-bc-count">
                    {books[book].length} test{books[book].length !== 1 ? 's' : ''}
                  </div>
                </div>
                <span className="rh-bc-arrow">→</span>
              </button>
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

  // ── Test list view ────────────────────────────────────────────────────────
  return (
    <div className="rh-page rh-page--wide" data-skill="listening">
      <button className="rh-back-btn" onClick={() => setSelectedBook(null)}>
        ← All collections
      </button>

      <header className="rh-header">
        <h1 className="rh-title">{selectedBook}</h1>
        <p className="rh-subtitle">
          Select a test to begin. Audio plays once — the timer starts
          immediately after you click <strong>Start</strong>.
        </p>
      </header>

      {error && <p className="rh-error" role="alert">{error}</p>}

      <div className="test-grid">
        {books[selectedBook].map(test => {
          const h = history[test.id]
          const done = h?.count > 0
          const isDraft = import.meta.env.DEV && !test.published
          const status = done ? 'done' : h?.inProgress ? 'inprogress' : 'notdone'
          return (
            <TestCard
              key={test.id}
              title={test.test_label + (isDraft ? '  ·  DRAFT' : '')}
              ghost={test.test_label.match(/\d+/)?.[0]}
              status={status}
              items={partLabels(test.content)}
              meta={`Academic Listening · ${countQuestions(test.content)} questions · 30 min`}
              ctaLabel={starting ? '…' : done ? 'Retake' : 'Start'}
              disabled={starting}
              onStart={() => startTest(test)}
              footer={h && (h.best != null || done) ? (
                <>
                  {h.best != null && <span>Best <span className="num">{h.best}</span></span>}
                  {done && <span className="num">{h.count} attempt{h.count === 1 ? '' : 's'}</span>}
                </>
              ) : null}
            />
          )
        })}
      </div>

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
