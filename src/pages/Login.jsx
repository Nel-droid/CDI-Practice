import { useState, useEffect } from 'react'
import { Link, useNavigate, useSearchParams } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import { ThemeToggle } from '../components/ThemeToggle'
import { Logo } from '../components/Logo'
import { GoogleButton } from '../components/GoogleButton'
import { PasswordInput } from '../components/PasswordInput'
import { PasswordChecklist } from '../components/PasswordChecklist'
import { evaluatePassword, firstPasswordProblem } from '../lib/passwordPolicy'
import './Login.css'

export default function Login() {
  const [searchParams] = useSearchParams()
  const mode = searchParams.get('mode') // 'signup' | 'reset' | null (sign in)
  const isSignUp = mode === 'signup'
  const isReset = mode === 'reset'

  const [email,       setEmail]       = useState('')
  const [password,    setPassword]    = useState('')
  const [displayName, setDisplayName] = useState('')
  const [error,       setError]       = useState('')
  const [message,     setMessage]     = useState('')
  const [submitting,  setSubmitting]  = useState(false)
  const [googleBusy,  setGoogleBusy]  = useState(false)

  const { signIn, signUp, signInWithGoogle, sendPasswordReset, user } = useAuth()
  const navigate = useNavigate()

  useEffect(() => {
    if (user) navigate('/dashboard', { replace: true })
  }, [user, navigate])

  // Clear any transient error/message when the user switches tabs.
  useEffect(() => { setError(''); setMessage('') }, [mode])

  const handleSubmit = async (e) => {
    e.preventDefault()
    setError('')
    setMessage('')

    if (isReset) {
      setSubmitting(true)
      try {
        const { error } = await sendPasswordReset(email)
        if (error) setError(error.message)
        else setMessage('Check your email for a link to reset your password.')
      } finally {
        setSubmitting(false)
      }
      return
    }

    if (isSignUp) {
      // Enforce the strength policy before we ever hit the network.
      const problem = firstPasswordProblem(password, { email, name: displayName })
      if (problem) { setError(problem); return }
    }

    setSubmitting(true)
    try {
      if (isSignUp) {
        const { error } = await signUp(email, password, displayName)
        if (error) setError(error.message)
        else setMessage('Account created! Check your email for a confirmation link, then sign in.')
      } else {
        const { error } = await signIn(email, password)
        if (error) setError(error.message)
      }
    } finally {
      setSubmitting(false)
    }
  }

  const handleGoogle = async () => {
    setError(''); setGoogleBusy(true)
    const { error } = await signInWithGoogle()
    // On success the browser redirects away, so we only land here on failure.
    if (error) { setError(error.message); setGoogleBusy(false) }
  }

  const title = isReset ? 'Reset your password' : isSignUp ? 'Create your account' : 'Sign in'
  const sub = isReset
    ? 'We’ll email you a secure link to set a new one.'
    : isSignUp
      ? 'Free, and no card. Your first band score in about an hour.'
      : 'Pick up where you left off.'

  const pwEval = isSignUp ? evaluatePassword(password, { email, name: displayName }) : null

  return (
    <div className="login-page">
      {/* ── Brand panel: carries the band rule through from the landing page ── */}
      <aside className="login-aside on-ink">
        <Link to="/" className="login-home-logo" aria-label="Go to home page">
          <Logo size={26} className="logo-mark--inv" />
          <span className="login-wordmark">CDI Practice</span>
        </Link>

        <div className="login-aside-body">
          <p className="login-aside-kicker num">Computer-delivered IELTS</p>
          <p className="login-aside-line">
            Every answer marked against the passage line that proves it.
          </p>

          <div className="login-rule" aria-hidden="true">
            {[0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map((b, i) => (
              <div className="login-tick-group" key={b}>
                <span className="login-tick login-tick--major" />
                <span className="login-tick-label num">{b}</span>
                {i < 9 && <span className="login-tick login-tick--minor" />}
              </div>
            ))}
            <div className="login-rule-target" />
          </div>
        </div>

        <p className="login-aside-foot">
          Authentic Cambridge material · Reading, Listening &amp; Writing
        </p>
      </aside>

      {/* ── Form panel ────────────────────────────────────────────────────── */}
      <main className="login-main">
        <ThemeToggle className="theme-toggle--page" />

        <div className="login-form-wrap">
          <h1 className="login-title">{title}</h1>
          <p className="login-sub">{sub}</p>

          {/* Mode tabs — hidden in reset mode, which is a focused side-flow */}
          {!isReset && (
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
          )}

          {error   && <p className="login-error"   role="alert">{error}</p>}
          {message && <p className="login-success" role="status">{message}</p>}

          {/* Google — offered for both sign in and sign up, not password reset */}
          {!isReset && (
            <>
              <GoogleButton
                onClick={handleGoogle}
                disabled={googleBusy || submitting}
                label={isSignUp ? 'Sign up with Google' : 'Continue with Google'}
              />
              <div className="login-divider"><span>or</span></div>
            </>
          )}

          <form className="login-form" onSubmit={handleSubmit} noValidate>
            {isSignUp && (
              <div className="field">
                <label htmlFor="displayName">Nickname</label>
                <input
                  id="displayName"
                  type="text"
                  value={displayName}
                  onChange={e => setDisplayName(e.target.value)}
                  placeholder="What should we call you?"
                  autoComplete="nickname"
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

            {!isReset && (
              <div className="field">
                <div className="field-label-row">
                  <label htmlFor="password">Password</label>
                  {!isSignUp && (
                    <Link to="/login?mode=reset" className="login-forgot">Forgot password?</Link>
                  )}
                </div>
                <PasswordInput
                  id="password"
                  value={password}
                  onChange={e => setPassword(e.target.value)}
                  placeholder={isSignUp ? 'Create a strong password' : 'Your password'}
                  required
                  autoComplete={isSignUp ? 'new-password' : 'current-password'}
                />
                {isSignUp && password.length > 0 && (
                  <PasswordChecklist checks={pwEval.checks} />
                )}
              </div>
            )}

            <button
              type="submit"
              className="login-submit"
              disabled={submitting || (isSignUp && !pwEval.valid)}
            >
              {submitting
                ? 'Please wait…'
                : isReset ? 'Send reset link'
                : isSignUp ? 'Create account'
                : 'Sign in'}
            </button>
          </form>

          <p className="login-hint">
            {isReset
              ? <Link to="/login">Back to sign in</Link>
              : isSignUp
                ? <Link to="/login">Already have an account? Sign in</Link>
                : <Link to="/login?mode=signup">No account yet? Create one free</Link>
            }
          </p>
        </div>
      </main>
    </div>
  )
}
