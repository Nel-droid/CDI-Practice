import { Link } from 'react-router-dom'
import './Login.css'

export default function Login() {
  return (
    <div className="login-page">
      <div className="login-card">
        <Link to="/" className="login-back">
          &larr; Back to home
        </Link>
        <h1 className="login-title">CDI IELTS Practice</h1>
        <p className="login-subtitle">
          Sign in to your account, or create one to get started.
        </p>

        <div className="login-placeholder">
          <p>
            <strong>Coming in Phase 2:</strong> email and Google sign-in
            via Supabase Auth.
          </p>
          <p style={{ marginTop: '0.5rem', fontSize: '0.9rem' }}>
            For now, go straight to the{' '}
            <Link to="/dashboard">Dashboard</Link>.
          </p>
        </div>

        <p className="login-hint">
          No account yet?{' '}
          <Link to="/login?mode=signup">Sign up free</Link>
        </p>
      </div>
    </div>
  )
}
