import { Outlet, NavLink, useLocation } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import { ThemeToggle } from './ThemeToggle'
import { Avatar, DEFAULT_AVATAR_COLOR } from './Avatar'
import { TutorWidget } from './ai/TutorWidget'
import { BackgroundLayer } from './BackgroundLayer'
import { TelegramLink } from './TelegramLink'
import './AppShell.css'

// The header logo is loaded directly from the S3 bucket by its full URL (not a
// bundled local asset), so it shows up as an S3 request in the browser's Network
// tab. Uses the S3 *REST* endpoint (HTTPS), which works whether the page is served
// over HTTP or HTTPS — no mixed-content issue once the site is behind Cloudflare.
const S3_LOGO = 'https://cdi-practice-frontend.s3.us-east-1.amazonaws.com/assets/cdi-mark.svg'

export default function AppShell() {
  const location = useLocation()
  const { user } = useAuth()
  const avatarName =
    user?.user_metadata?.display_name || user?.user_metadata?.full_name || user?.email
  const avatarColor = user?.user_metadata?.avatar_color || DEFAULT_AVATAR_COLOR
  const avatarUrl = user?.user_metadata?.avatar_url || null
  return (
    <div className="shell">
      <BackgroundLayer />
      <header className="shell-header">
        <NavLink to="/dashboard" className="shell-logo">
          <img src={S3_LOGO} alt="CDI Practice" width="26" height="26" className="shell-logo-img" />
          <span>CDI Practice</span>
        </NavLink>
        <nav className="shell-nav" aria-label="Main navigation">
          <NavLink
            to="/dashboard"
            className={({ isActive }) => 'nav-link nav-link--dash' + (isActive ? ' active' : '')}
          >
            Dashboard
          </NavLink>
          <NavLink
            to="/study"
            className={({ isActive }) => 'nav-link' + (isActive ? ' active' : '')}
          >
            Coach
          </NavLink>
          <span className="nav-divider" aria-hidden="true" />
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
          <span className="nav-divider" aria-hidden="true" />
          <ThemeToggle />
          <NavLink
            to="/settings"
            className={({ isActive }) => 'nav-avatar-link' + (isActive ? ' active' : '')}
            aria-label="Settings"
            title="Settings"
          >
            <Avatar name={avatarName} color={avatarColor} imageUrl={avatarUrl} size={30} />
          </NavLink>
        </nav>
      </header>
      <main className="shell-main">
        {/* keyed by route so each page plays a short entrance on navigation */}
        <div className="shell-page" key={location.pathname}>
          <Outlet />
        </div>
      </main>
      <footer className="shell-foot">
        <p className="shell-foot-note">CDI Practice — built for focused IELTS practice.</p>
        <TelegramLink />
      </footer>
      <TutorWidget />
    </div>
  )
}
