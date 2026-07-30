import { useTheme } from '../context/ThemeContext'

/**
 * Sun/moon toggle button.
 * Use className="theme-toggle--page" for floating placement on light/dark page bg.
 * Default styling inherits colour from parent (works on primary-coloured headers).
 */
export function ThemeToggle({ className = '' }) {
  const { theme, toggle } = useTheme()
  const isDark = theme === 'dark'
  return (
    <button
      type="button"
      className={`theme-toggle${className ? ` ${className}` : ''}`}
      onClick={toggle}
      aria-label={isDark ? 'Switch to light mode' : 'Switch to dark mode'}
      title={isDark ? 'Light mode' : 'Dark mode'}
    >
      {isDark ? '☀' : '☾'}
    </button>
  )
}
