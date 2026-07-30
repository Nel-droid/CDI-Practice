import { createContext, useContext, useEffect, useState, useCallback } from 'react'
import { supabase } from '../lib/supabase'
import { useAuth } from './AuthContext'
import { isValidBackground } from '../lib/backgrounds'

const ThemeContext = createContext(null)
const MODE_KEY = 'cdi-theme-mode'
const BG_KEYS = { light: 'cdi-bg-light', dark: 'cdi-bg-dark' }

function getSystemTheme() {
  return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light'
}

function applyTheme(theme) {
  document.documentElement.setAttribute('data-theme', theme)
}

function readMode() {
  try {
    const m = localStorage.getItem(MODE_KEY)
    return m === 'light' || m === 'dark' || m === 'system' ? m : 'system'
  } catch {
    return 'system'
  }
}

function readBackground(theme) {
  try {
    const b = localStorage.getItem(BG_KEYS[theme])
    return isValidBackground(b, theme) ? b : 'none'
  } catch {
    return 'none'
  }
}

/**
 * Theme is a three-way preference — System / Light / Dark. "System" tracks the
 * OS setting live. The resolved light-or-dark value is what actually styles the
 * page. The mode persists to localStorage (flash-free on next load) and, for a
 * signed-in candidate, to `profiles.theme_preference` — which only accepts
 * 'light'/'dark' under its CHECK, so "system" is stored as NULL (i.e. no
 * explicit preference) there.
 */
export function ThemeProvider({ children }) {
  const { user } = useAuth()
  const [mode, setModeState] = useState(readMode)
  const [systemTheme, setSystemTheme] = useState(getSystemTheme)
  // One remembered backdrop per appearance (device-local).
  const [bgByTheme, setBgByTheme] = useState(() => ({
    light: readBackground('light'),
    dark: readBackground('dark'),
  }))

  // Track the OS scheme so "System" mode updates live.
  useEffect(() => {
    const mq = window.matchMedia('(prefers-color-scheme: dark)')
    const onChange = () => setSystemTheme(mq.matches ? 'dark' : 'light')
    mq.addEventListener('change', onChange)
    return () => mq.removeEventListener('change', onChange)
  }, [])

  const theme = mode === 'system' ? systemTheme : mode
  useEffect(() => { applyTheme(theme) }, [theme])

  // The active backdrop is whichever this appearance remembers.
  const background = bgByTheme[theme] ?? 'none'
  useEffect(() => {
    document.documentElement.setAttribute('data-bg', background)
  }, [background])

  // On sign-in, adopt the saved preference (NULL → System).
  useEffect(() => {
    if (!user) return
    supabase
      .from('profiles')
      .select('theme_preference')
      .eq('id', user.id)
      .single()
      .then(({ data }) => {
        const m = data?.theme_preference ?? 'system'
        setModeState(m)
        try { localStorage.setItem(MODE_KEY, m) } catch { /* private mode */ }
      })
  }, [user?.id])

  const setMode = useCallback((m) => {
    setModeState(m)
    try { localStorage.setItem(MODE_KEY, m) } catch { /* private mode */ }
    if (user) {
      supabase
        .from('profiles')
        .update({ theme_preference: m === 'system' ? null : m })
        .eq('id', user.id)
        .then(({ error }) => {
          if (error) console.warn('[CDI] theme save failed:', error.message)
        })
    }
  }, [user])

  // Kept for the header ThemeToggle: flip between the two visible themes.
  const toggle = useCallback(() => setMode(theme === 'dark' ? 'light' : 'dark'), [theme, setMode])

  // Set the backdrop for the CURRENT appearance; the other one is untouched.
  const setBackground = useCallback((b) => {
    const next = isValidBackground(b, theme) ? b : 'none'
    setBgByTheme(prev => ({ ...prev, [theme]: next }))
    try { localStorage.setItem(BG_KEYS[theme], next) } catch { /* private mode */ }
  }, [theme])

  return (
    <ThemeContext.Provider value={{ theme, mode, setMode, toggle, background, setBackground }}>
      {children}
    </ThemeContext.Provider>
  )
}

export function useTheme() {
  const ctx = useContext(ThemeContext)
  if (!ctx) throw new Error('useTheme must be used inside <ThemeProvider>')
  return ctx
}
