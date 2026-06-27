import { useState, useEffect } from 'react'
import { Link, useNavigate, useSearchParams } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import './Login.css'

export default function Login() {
  const [searchParams] = useSearchParams()
  const isSignUp = searchParams.get('mode') === 'signup'

  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [displayName, setDisplayName] = useState('')
  const [error, setError] = useState('')
  const [message, setMessage] = useState('')
  const [submitting, setSubmitting] = useState(false)

  const { signIn, signUp, user } = useAuth()
  const navigate = useNavigate()

  useEffect(() => {
    if (user) navigate('/dashboard', { replace: true })
  }, [user, navigate])

  const handleSubmit = async (e) => {
    e.preventDefault()
    setError('')
    setMessage('')
    setSubmitting(true)

    try {
      if (isSignUp) {
        const { error } = await signUp(email, password, displayName)
        if (error) {
          setError(error.message)
        } else {
          setMessage(
            'Account created! Check your email for a confirmation link, then sign in.'
          )
        }
      } else {
        const { error } = await signIn(email, password)
        if (error) setError(error.message)
        // Successful login: useEffect above handles the redirect
      }
    } finally {
      setSubmitting(false)
    }
  }

  return (
    <div className="login-page">
      <div className="login-card">
        <Link to="/" className="login-back">&larr; Back to home</Link>
        <h1 className="login-title">CDI Practice</h1>

        <div className="login-tabs" role="tablist">
          <Link
            to="/login"
            role="tab"
            aria-selected={!isSignUp}
            className={'login-tab' + (!isSignUp ? ' active' : '')}
          >
            Sign in
          </Link>
          <Link
            to="/login?mode=signup"
            role="tab"
            aria-selected={isSignUp}
            className={'login-tab' + (isSignUp ? ' active' : '')}
          >
            Create account
          </Link>
        </div>

        {error && <p className="login-error" role="alert">{error}</p>}
        {message && <p className="login-success" role="status">{message}</p>}

        <form className="login-form" onSubmit={handleSubmit} noValidate>
          {isSignUp && (
            <div className="field">
              <label htmlFor="displayName">Your name</label>
              <input
                id="displayName"
                type="text"
                value={displayName}
                onChange={e => setDisplayName(e.target.value)}
                placeholder="How should we address you?"
                autoComplete="name"
              />
            </div>
          )}

          <div className="field">
            <label htmlFor="email">Email address</label>
            <input
              id="email"
              type="email"
              value={email}
              onChange={e => setEmail(e.target.value)}
              placeholder="you@example.com"
              required
              autoComplete="email"
            />
          </div>

          <div className="field">
            <label htmlFor="password">Password</label>
            <input
              id="password"
              type="password"
              value={password}
              onChange={e => setPassword(e.target.value)}
              placeholder={isSignUp ? 'At least 6 characters' : 'Your password'}
              required
              autoComplete={isSignUp ? 'new-password' : 'current-password'}
            />
          </div>

          <button
            type="submit"
            className="btn btn-primary login-submit"
            disabled={submitting}
          >
            {submitting
              ? 'Please wait…'
              : isSignUp ? 'Create account' : 'Sign in'}
          </button>
        </form>

        <p className="login-hint">
          {isSignUp
            ? <></>
            : <>No account yet?{' '}
                <Link to="/login?mode=signup">Create one free</Link>
              </>
          }
        </p>
      </div>
    </div>
  )
}
