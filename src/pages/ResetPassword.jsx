import { useState, useEffect } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { supabase } from '../lib/supabase'
import { ThemeToggle } from '../components/ThemeToggle'
import { Logo } from '../components/Logo'
import { PasswordInput } from '../components/PasswordInput'
import { PasswordChecklist } from '../components/PasswordChecklist'
import { evaluatePassword, firstPasswordProblem } from '../lib/passwordPolicy'
import './Login.css'

/**
 * Where the "reset your password" email link lands. Supabase turns the link's
 * token into a short-lived recovery session (a PASSWORD_RECOVERY event), during
 * which the user can set a new password with updateUser({ password }).
 */
export default function ResetPassword() {
  const navigate = useNavigate()

  const [ready,    setReady]    = useState(false) // recovery session established?
  const [email,    setEmail]    = useState('')
  const [password, setPassword] = useState('')
  const [confirm,  setConfirm]  = useState('')
  const [error,    setError]    = useState('')
  const [state,    setState]    = useState('idle') // idle | saving | done

  useEffect(() => {
    // If we already hold a recovery/session, we're ready. Otherwise wait for
    // the PASSWORD_RECOVERY event the SDK fires after parsing the URL token.
    supabase.auth.getSession().then(({ data: { session } }) => {
      if (session) { setReady(true); setEmail(session.user?.email || '') }
    })
    const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === 'PASSWORD_RECOVERY' || (event === 'SIGNED_IN' && session)) {
        setReady(true)
        setEmail(session?.user?.email || '')
      }
    })
    return () => subscription.unsubscribe()
  }, [])

  const pwEval = evaluatePassword(password, { email })
  const mismatch = confirm.length > 0 && password !== confirm
  const canSave = pwEval.valid && password === confirm && state !== 'saving'

  const handleSubmit = async (e) => {
    e.preventDefault()
    setError('')
    const problem = firstPasswordProblem(password, { email })
    if (problem) { setError(problem); return }
    if (password !== confirm) { setError('Passwords don’t match.'); return }

    setState('saving')
    const { error } = await supabase.auth.updateUser({ password })
    if (error) { setError(error.message); setState('idle'); return }
    setState('done')
    setTimeout(() => navigate('/dashboard', { replace: true }), 1400)
  }

  return (
    <div className="login-page">
      <aside className="login-aside on-ink">
        <Link to="/" className="login-home-logo" aria-label="Go to home page">
          <Logo size={26} className="logo-mark--inv" />
          <span className="login-wordmark">CDI Practice</span>
        </Link>
        <div className="login-aside-body">
          <p className="login-aside-kicker num">Computer-delivered IELTS</p>
          <p className="login-aside-line">One strong password, and you’re back in.</p>
        </div>
        <p className="login-aside-foot">
          Authentic Cambridge material · Reading, Listening &amp; Writing
        </p>
      </aside>

      <main className="login-main">
        <ThemeToggle className="theme-toggle--page" />
        <div className="login-form-wrap">
          <h1 className="login-title">Set a new password</h1>

          {!ready ? (
            <p className="login-sub">
              Open this page from the link in your reset email. If you got here by
              mistake, <Link to="/login?mode=reset">request a new link</Link>.
            </p>
          ) : state === 'done' ? (
            <p className="login-success" role="status">
              Password updated. Taking you to your dashboard…
            </p>
          ) : (
            <>
              <p className="login-sub">Choose a strong password you haven’t used here before.</p>
              {error && <p className="login-error" role="alert">{error}</p>}

              <form className="login-form" onSubmit={handleSubmit} noValidate>
                <div className="field">
                  <label htmlFor="new-password">New password</label>
                  <PasswordInput
                    id="new-password"
                    value={password}
                    onChange={e => setPassword(e.target.value)}
                    placeholder="Create a strong password"
                    required
                    autoComplete="new-password"
                  />
                  {password.length > 0 && <PasswordChecklist checks={pwEval.checks} />}
                </div>

                <div className="field">
                  <label htmlFor="confirm-password">Confirm password</label>
                  <PasswordInput
                    id="confirm-password"
                    value={confirm}
                    onChange={e => setConfirm(e.target.value)}
                    placeholder="Re-enter your password"
                    required
                    autoComplete="new-password"
                  />
                  {mismatch && <p className="login-error" role="alert">Passwords don’t match.</p>}
                </div>

                <button type="submit" className="login-submit" disabled={!canSave}>
                  {state === 'saving' ? 'Saving…' : 'Update password'}
                </button>
              </form>
            </>
          )}
        </div>
      </main>
    </div>
  )
}
