import { useState, useRef, useEffect } from 'react'
import { useLocation, Link } from 'react-router-dom'
import { askTutor } from '../../lib/ai/aiClient'
import { useUsage } from '../../lib/useUsage'
import { Markdown } from './Markdown'
import './TutorWidget.css'

// Turn the current route into a short hint so the tutor knows where the
// learner is without us sending any private data.
function contextForPath(pathname) {
  if (pathname.startsWith('/reading')) return 'The learner is in the Reading section.'
  if (pathname.startsWith('/listening')) return 'The learner is in the Listening section.'
  if (pathname.startsWith('/writing')) return 'The learner is in the Writing section (Task 1 and/or Task 2).'
  if (pathname.startsWith('/study')) return 'The learner is on the Coach/progress page.'
  return ''
}

const SUGGESTIONS = [
  'How do I approach True/False/Not Given questions?',
  'Give me a strong Task 2 introduction structure.',
  'What linking words raise my Coherence score?',
]

const WELCOME = {
  role: 'assistant',
  content:
    "Hi, I'm your CDI Tutor 👋 Ask me anything about IELTS Reading, Listening, or Writing — or about using English in everyday life. How can I help?",
}

export function TutorWidget() {
  const location = useLocation()
  const [open, setOpen] = useState(false)
  const [messages, setMessages] = useState([WELCOME])
  const [input, setInput] = useState('')
  const [busy, setBusy] = useState(false)
  const [error, setError] = useState('')
  const [quotaHit, setQuotaHit] = useState(false)
  const { usage, refresh: refreshUsage } = useUsage()
  const scrollRef = useRef(null)
  const inputRef = useRef(null)

  useEffect(() => {
    if (open && scrollRef.current) {
      scrollRef.current.scrollTop = scrollRef.current.scrollHeight
    }
  }, [messages, open, busy])

  useEffect(() => {
    if (open) inputRef.current?.focus()
  }, [open])

  async function send(text) {
    const content = (text ?? input).trim()
    if (!content || busy) return
    setError('')
    setInput('')
    const next = [...messages, { role: 'user', content }]
    setMessages(next)
    setBusy(true)
    try {
      const reply = await askTutor({
        messages: next.filter(m => m !== WELCOME), // don't send the canned greeting
        context: contextForPath(location.pathname),
      })
      setMessages([...next, { role: 'assistant', content: reply }])
      refreshUsage()
    } catch (e) {
      if (e.code === 'quota_exceeded' || e.status === 402) {
        setQuotaHit(true)
      } else {
        setError(e.message)
      }
      setMessages(next) // keep the user's message; let them retry
      refreshUsage()
    } finally {
      setBusy(false)
    }
  }

  function onKeyDown(e) {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault()
      send()
    }
  }

  return (
    <>
      <button
        className={'tutor-fab' + (open ? ' is-open' : '')}
        onClick={() => setOpen(o => !o)}
        aria-label={open ? 'Close CDI Tutor' : 'Ask the CDI Tutor'}
        aria-expanded={open}
      >
        {open ? '✕' : <span className="tutor-fab-label"><span className="tutor-fab-spark">✦</span> CDI Tutor</span>}
      </button>

      {open && (
        <div className="tutor-panel" role="dialog" aria-label="CDI Tutor">
          <header className="tutor-header">
            <span className="tutor-header-title"><span className="tutor-fab-spark">✦</span> CDI Tutor</span>
            <span className="tutor-header-sub">AI English &amp; IELTS tutor</span>
          </header>

          <div className="tutor-messages" ref={scrollRef}>
            {messages.map((m, i) => (
              <div key={i} className={'tutor-msg tutor-msg--' + m.role}>
                <div className={'tutor-bubble' + (m.role === 'assistant' ? ' tutor-md' : '')}>
                  {m.role === 'assistant' ? <Markdown text={m.content} /> : m.content}
                </div>
              </div>
            ))}
            {busy && (
              <div className="tutor-msg tutor-msg--assistant">
                <div className="tutor-bubble tutor-typing"><span></span><span></span><span></span></div>
              </div>
            )}
            {error && <p className="tutor-error" role="alert">{error}</p>}
          </div>

          {messages.length <= 1 && !busy && (
            <div className="tutor-suggestions">
              {SUGGESTIONS.map((s, i) => (
                <button key={i} className="tutor-chip" onClick={() => send(s)}>{s}</button>
              ))}
            </div>
          )}

          {(() => {
            const t = usage?.tutor
            const out = quotaHit || (t && t.used >= t.limit)
            if (out) {
              return (
                <div className="tutor-quota tutor-quota--out">
                  <span>You've used today's {t?.limit ?? ''} tutor messages.</span>
                  <Link to="/pricing" onClick={() => setOpen(false)}>See plans →</Link>
                </div>
              )
            }
            if (t) {
              return (
                <p className="tutor-quota">
                  {Math.max(0, t.limit - t.used)} of {t.limit} left today
                  {usage.tier === 'free' && (
                    <> · <Link to="/pricing" onClick={() => setOpen(false)}>Upgrade</Link></>
                  )}
                </p>
              )
            }
            return null
          })()}

          <div className="tutor-inputbar">
            <textarea
              ref={inputRef}
              className="tutor-input"
              rows={1}
              value={input}
              onChange={e => setInput(e.target.value)}
              onKeyDown={onKeyDown}
              placeholder="Ask about a question, a word, grammar…"
              disabled={busy || quotaHit}
            />
            <button className="tutor-send" onClick={() => send()} disabled={busy || quotaHit || !input.trim()} aria-label="Send">
              ↑
            </button>
          </div>
        </div>
      )}
    </>
  )
}
