import { Outlet, NavLink } from 'react-router-dom'
import './AppShell.css'

export default function AppShell() {
  return (
    <div className="shell">
      <header className="shell-header">
        <NavLink to="/dashboard" className="shell-logo">
          CDI IELTS Practice
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
          <NavLink to="/" className="nav-link nav-signout">
            Sign out
          </NavLink>
        </nav>
      </header>
      <main className="shell-main">
        <Outlet />
      </main>
    </div>
  )
}
