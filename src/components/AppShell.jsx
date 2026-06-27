import { Outlet, NavLink, useNavigate } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import './AppShell.css'

export default function AppShell() {
  const { signOut } = useAuth()
  const navigate = useNavigate()

  const handleSignOut = async (e) => {
    e.preventDefault()
    await signOut()
    navigate('/', { replace: true })
  }

  return (
    <div className="shell">
      <header className="shell-header">
        <NavLink to="/dashboard" className="shell-logo">
          CDI Practice
        </NavLink>
        <nav className="shell-nav" aria-label="Main navigation">
          <NavLink
            to="/reading"
            className={({ isActive }) => 'nav-link' + (isActive ? ' active' : '')}
          >
            Reading
          </NavLink>
          <NavLink
            to="/listening"
            className={({ isActive }) => 'nav-link' + (isActive ? ' active' : '')}
          >
            Listening
          </NavLink>
          <NavLink
            to="/writing"
            className={({ isActive }) => 'nav-link' + (isActive ? ' active' : '')}
          >
            Writing
          </NavLink>
          <button onClick={handleSignOut} className="nav-link nav-signout nav-btn">
            Sign out
          </button>
        </nav>
      </header>
      <main className="shell-main">
        <Outlet />
      </main>
    </div>
  )
}
