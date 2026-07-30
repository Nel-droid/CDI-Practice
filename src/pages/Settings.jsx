import { useEffect, useRef, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useAuth } from '../context/AuthContext'
import { useTheme } from '../context/ThemeContext'
import { useTargetBand } from '../lib/useTargetBand'
import { useAttempts } from '../lib/useAttempts'
import { useExamPrefs } from '../lib/useExamPrefs'
import { resultsToCsv, downloadCsv } from '../lib/exportResults'
import { uploadAvatar, removeAvatar } from '../lib/avatarUpload'
import { completedAttempts } from '../lib/analytics/progress'
import { Avatar, AVATAR_COLORS, DEFAULT_AVATAR_COLOR } from '../components/Avatar'
import { PasswordChecklist } from '../components/PasswordChecklist'
import { PasswordInput } from '../components/PasswordInput'
import { evaluatePassword, firstPasswordProblem } from '../lib/passwordPolicy'
import { backgroundsForTheme } from '../lib/backgrounds'
import { supabase } from '../lib/supabase'
import './Settings.css'

const TARGET_CHOICES = [5.5, 6, 6.5, 7, 7.5, 8, 8.5]
const MOTION_KEY = 'cdi-reduce-motion'

const SECTIONS = [
  { id: 'general', label: 'General', icon: IconGeneral },
  { id: 'account', label: 'Account', icon: IconAccount },
  { id: 'privacy', label: 'Privacy', icon: IconPrivacy },
]

function readReduceMotion() {
  try { return localStorage.getItem(MOTION_KEY) === '1' } catch { return false }
}

export default function Settings() {
  const { user } = useAuth()
  const [section, setSection] = useState('general')

  const name =
    user?.user_metadata?.display_name || user?.user_metadata?.full_name || ''
  const color = user?.user_metadata?.avatar_color || DEFAULT_AVATAR_COLOR
  const avatarUrl = user?.user_metadata?.avatar_url || null

  return (
    <div className="settings">
      <header className="settings-head">
        <p className="settings-kicker num">Account</p>
        <h1 className="settings-title">Settings</h1>
      </header>

      <div className="settings-shell">
        {/* Section rail */}
        <nav className="settings-rail" aria-label="Settings sections">
          {SECTIONS.map(({ id, label, icon: Icon }) => (
            <button
              key={id}
              className={`settings-rail-item${section === id ? ' is-active' : ''}`}
              onClick={() => setSection(id)}
              aria-current={section === id ? 'page' : undefined}
            >
              <Icon />
              {label}
            </button>
          ))}
        </nav>

        {/* Section content */}
        <div className="settings-panel">
          {section === 'general' && <GeneralSection user={user} name={name} color={color} avatarUrl={avatarUrl} />}
          {section === 'account' && <AccountSection user={user} name={name} color={color} avatarUrl={avatarUrl} />}
          {section === 'privacy' && <PrivacySection user={user} />}
        </div>
      </div>
    </div>
  )
}

/* ═══════════════════════════════════════════════════════════════════════════
   GENERAL
   ═══════════════════════════════════════════════════════════════════════════ */

function GeneralSection({ user, name, color, avatarUrl }) {
  const { theme, mode, setMode, background, setBackground } = useTheme()
  const bgOptions = backgroundsForTheme(theme)
  const [target, saveTarget] = useTargetBand(user)
  const prefs = useExamPrefs()

  const [nameVal, setNameVal] = useState(name)
  const [nameState, setNameState] = useState('idle')
  useEffect(() => { setNameVal(name) }, [name])

  // Avatar photo
  const fileRef = useRef(null)
  const [photo, setPhoto] = useState(avatarUrl)
  const [photoState, setPhotoState] = useState('idle') // idle | uploading
  const [photoError, setPhotoError] = useState('')
  useEffect(() => { setPhoto(avatarUrl) }, [avatarUrl])

  async function onPickFile(e) {
    const file = e.target.files?.[0]
    e.target.value = '' // allow re-picking the same file
    if (!file) return
    if (!file.type.startsWith('image/')) { setPhotoError('Choose an image file.'); return }
    setPhotoError(''); setPhotoState('uploading')
    try {
      const url = await uploadAvatar(user, file)
      setPhoto(url)
    } catch (err) {
      setPhotoError(err.message)
    } finally {
      setPhotoState('idle')
    }
  }

  async function onRemovePhoto() {
    setPhotoState('uploading')
    try { await removeAvatar(user); setPhoto(null) }
    catch (err) { setPhotoError(err.message) }
    finally { setPhotoState('idle') }
  }

  async function saveName() {
    const t = nameVal.trim()
    if (!t || t === name) return
    setNameState('saving')
    const { error } = await supabase.auth.updateUser({ data: { display_name: t } })
    setNameState(error ? 'idle' : 'saved')
    if (!error) setTimeout(() => setNameState('idle'), 2000)
  }

  async function saveColor(c) {
    await supabase.auth.updateUser({ data: { avatar_color: c } })
  }

  const [reduceMotion, setReduceMotion] = useState(readReduceMotion)
  function toggleMotion() {
    const next = !reduceMotion
    setReduceMotion(next)
    try { localStorage.setItem(MOTION_KEY, next ? '1' : '0') } catch { /* private */ }
    document.documentElement.setAttribute('data-reduce-motion', next ? 'on' : 'off')
  }

  return (
    <>
      <SectionTitle>General</SectionTitle>

      <div className="setting-row setting-row--stack">
        <div className="setting-label">
          <h3>Photo</h3>
          <p>Upload a photo, or use your initials in a colour.</p>
        </div>
        <div className="setting-control setting-avatar">
          <Avatar name={nameVal || user?.email} color={color} imageUrl={photo} size={64} />
          <div className="setting-avatar-controls">
            <input
              ref={fileRef} type="file" accept="image/*"
              onChange={onPickFile} hidden aria-hidden="true"
            />
            <div className="setting-actions">
              <button className="btn btn-outline" onClick={() => fileRef.current?.click()} disabled={photoState === 'uploading'}>
                {photoState === 'uploading' ? 'Uploading…' : photo ? 'Change photo' : 'Upload photo'}
              </button>
              {photo && (
                <button className="btn btn-ghost" onClick={onRemovePhoto} disabled={photoState === 'uploading'}>Remove</button>
              )}
            </div>
            {photoError && <p className="setting-inline-msg setting-inline-msg--err">{photoError}</p>}
            {!photo && (
              <div className="setting-swatches" role="group" aria-label="Avatar colour">
                {AVATAR_COLORS.map(c => (
                  <button
                    key={c}
                    className={`setting-swatch${color === c ? ' is-active' : ''}`}
                    style={{ background: c }}
                    onClick={() => saveColor(c)}
                    aria-label={`Colour ${c}`}
                    aria-pressed={color === c}
                  />
                ))}
              </div>
            )}
          </div>
        </div>
      </div>

      <Row label="Display name" help="What we call you across the app.">
        <div className="setting-name">
          <input
            type="text" value={nameVal} maxLength={40}
            onChange={e => setNameVal(e.target.value)}
            onBlur={saveName}
            onKeyDown={e => e.key === 'Enter' && e.currentTarget.blur()}
            placeholder="Your name" aria-label="Display name"
          />
          <span className={`setting-saved${nameState === 'saved' ? ' is-shown' : ''}`} aria-live="polite">Saved</span>
        </div>
      </Row>

      <Row label="Target band" help="The band you're aiming for. Drives your coach and progress.">
        <div className="setting-targets" role="group" aria-label="Target band">
          {TARGET_CHOICES.map(b => (
            <button key={b}
              className={`setting-target num${target === b ? ' is-active' : ''}`}
              onClick={() => saveTarget(target === b ? null : b)}
              aria-pressed={target === b}
            >{b}</button>
          ))}
        </div>
      </Row>

      <Row label="Appearance" help="Match your device, or pick a look.">
        <div className="setting-seg" role="group" aria-label="Appearance">
          {[['system', 'Device'], ['light', '☀ Light'], ['dark', '☾ Dark']].map(([m, lbl]) => (
            <button key={m}
              className={`setting-seg-opt${mode === m ? ' is-active' : ''}`}
              onClick={() => setMode(m)} aria-pressed={mode === m}
            >{lbl}</button>
          ))}
        </div>
      </Row>

      <div className="setting-row setting-row--full">
        <div className="setting-label">
          <h3>Background</h3>
          <p>Pick a backdrop for the app — the choices match your {theme} appearance, and each appearance remembers its own. Shows everywhere except during a test.</p>
        </div>
        <div className="setting-bg-picker">
          {bgOptions.map(o => (
            <button
              key={o.id}
              className={'setting-bg-tile' + (background === o.id ? ' is-active' : '')}
              onClick={() => setBackground(o.id)}
              aria-pressed={background === o.id}
              title={o.name}
            >
              <span className="setting-bg-preview" data-bg={o.id} aria-hidden="true" />
              <span className="setting-bg-name">{o.name}</span>
            </button>
          ))}
        </div>
      </div>

      <Row label="Reading text size" help="Default size for passages and questions. Adjustable during a test too.">
        <div className="setting-textsize">
          <button className="setting-step" onClick={prefs.smallerText} disabled={!prefs.canShrink} aria-label="Smaller text">A&minus;</button>
          <span className="setting-textsize-preview" style={{ fontSize: `${0.8 + prefs.scale * 0.35}rem` }}>A</span>
          <button className="setting-step" onClick={prefs.biggerText} disabled={!prefs.canGrow} aria-label="Larger text">A+</button>
        </div>
      </Row>

      <Row label="Reduce motion" help="Turn off page and chart animations, regardless of your system setting.">
        <button className={`setting-switch${reduceMotion ? ' is-on' : ''}`}
          role="switch" aria-checked={reduceMotion} onClick={toggleMotion}>
          <span className="setting-switch-knob" />
        </button>
      </Row>
    </>
  )
}

/* ═══════════════════════════════════════════════════════════════════════════
   ACCOUNT
   ═══════════════════════════════════════════════════════════════════════════ */

function AccountSection({ user, name, color, avatarUrl }) {
  const { signOut } = useAuth()
  const { attempts } = useAttempts(user)
  const navigate = useNavigate()
  const done = completedAttempts(attempts)

  const joined = user?.created_at
    ? new Date(user.created_at).toLocaleDateString('en-GB', { day: 'numeric', month: 'long', year: 'numeric' })
    : null

  async function signOutHere() {
    await signOut()
    navigate('/', { replace: true })
  }

  async function signOutEverywhere() {
    await supabase.auth.signOut({ scope: 'global' })
    navigate('/', { replace: true })
  }

  return (
    <>
      <SectionTitle>Account</SectionTitle>

      <div className="setting-idcard">
        <Avatar name={name || user?.email} color={color} imageUrl={avatarUrl} size={48} />
        <div className="setting-idcard-text">
          <span className="setting-idcard-name">{name || 'Your account'}</span>
          <span className="setting-idcard-email num">{user?.email}</span>
          {joined && <span className="setting-idcard-joined">Member since {joined}</span>}
        </div>
      </div>

      <Row label="Export results" help="Download every completed test as a CSV — dates, bands and scores.">
        <button className="btn btn-outline" disabled={done.length === 0}
          onClick={() => downloadCsv(resultsToCsv(attempts), 'cdi-results.csv')}>
          Download CSV{done.length > 0 ? ` (${done.length})` : ''}
        </button>
      </Row>

      <Row label="Sessions" help="Sign out here, or end every session on all your devices.">
        <div className="setting-actions">
          <button className="btn btn-outline" onClick={signOutHere}>Sign out</button>
          <button className="btn btn-ghost" onClick={signOutEverywhere}>All devices</button>
        </div>
      </Row>

      <DeleteAccountRow user={user} count={done.length} />
    </>
  )
}

function DeleteAccountRow({ user, count }) {
  const [open, setOpen] = useState(false)
  const [text, setText] = useState('')
  const [state, setState] = useState('idle') // idle | deleting
  const navigate = useNavigate()
  const ready = text.trim().toUpperCase() === 'DELETE'

  async function del() {
    if (!user || !ready) return
    setState('deleting')
    // Remove the candidate's data first…
    await supabase.from('attempts').delete().eq('user_id', user.id)
    // …then the auth record itself, if the optional RPC has been installed
    // (supabase/phase11-delete-account.sql). Ignored if it isn't.
    try { await supabase.rpc('delete_own_account') } catch { /* no RPC */ }
    await supabase.auth.signOut({ scope: 'global' })
    navigate('/', { replace: true })
  }

  return (
    <div className="setting-row setting-row--stack setting-danger">
      <div className="setting-label">
        <h3>Delete account</h3>
        <p>Permanently removes your account and all {count} results. This cannot be undone.</p>
      </div>
      <div className="setting-control">
        {!open ? (
          <button className="btn setting-danger-btn" onClick={() => setOpen(true)}>Delete account</button>
        ) : (
          <div className="setting-delete">
            <label className="setting-delete-label">
              Type <b>DELETE</b> to confirm
              <input type="text" value={text} onChange={e => setText(e.target.value)}
                placeholder="DELETE" aria-label="Type DELETE to confirm" autoComplete="off" />
            </label>
            <div className="setting-actions">
              <button className="btn setting-danger-btn" onClick={del} disabled={!ready || state === 'deleting'}>
                {state === 'deleting' ? 'Deleting…' : 'Delete account'}
              </button>
              <button className="btn btn-ghost" onClick={() => { setOpen(false); setText('') }}>Cancel</button>
            </div>
          </div>
        )}
      </div>
    </div>
  )
}

/* ═══════════════════════════════════════════════════════════════════════════
   PRIVACY
   ═══════════════════════════════════════════════════════════════════════════ */

function PrivacySection({ user }) {
  return (
    <>
      <SectionTitle>Privacy</SectionTitle>

      <Row label="Email" help="You sign in with this address." helpClass="num">
        <span className="setting-static num">{user?.email}</span>
      </Row>

      <PasswordRow user={user} />
      <ClearProgressRow user={user} />
    </>
  )
}

function PasswordRow({ user }) {
  const [open, setOpen] = useState(false)
  const [pw, setPw] = useState('')
  const [confirm, setConfirm] = useState('')
  const [state, setState] = useState('idle')
  const [error, setError] = useState('')

  const identity = { email: user?.email, name: user?.user_metadata?.display_name }
  const pwEval = evaluatePassword(pw, identity)
  const mismatch = confirm.length > 0 && pw !== confirm
  const canSave = pwEval.valid && pw === confirm && state !== 'saving'

  async function save() {
    setError('')
    const problem = firstPasswordProblem(pw, identity)
    if (problem) { setError(problem); return }
    setState('saving')
    const { error } = await supabase.auth.updateUser({ password: pw })
    if (error) { setError(error.message); setState('idle'); return }
    setState('saved'); setPw(''); setConfirm('')
    setTimeout(() => { setOpen(false); setState('idle') }, 1500)
  }

  return (
    <div className="setting-row setting-row--stack">
      <div className="setting-label">
        <h3>Password</h3>
        <p>Change the password you sign in with.</p>
      </div>
      <div className="setting-control">
        {!open ? (
          <button className="btn btn-outline" onClick={() => setOpen(true)}>Change password</button>
        ) : (
          <div className="setting-password">
            <PasswordInput value={pw} onChange={e => setPw(e.target.value)}
              placeholder="New password" autoComplete="new-password" aria-label="New password" />
            <PasswordInput value={confirm} onChange={e => setConfirm(e.target.value)}
              placeholder="Confirm new password" autoComplete="new-password" aria-label="Confirm new password" />
            {pw.length > 0 && <PasswordChecklist checks={pwEval.checks} />}
            {mismatch && <p className="setting-inline-msg">Passwords don't match.</p>}
            {error && <p className="setting-inline-msg setting-inline-msg--err">{error}</p>}
            <div className="setting-actions">
              <button className="btn btn-primary" onClick={save} disabled={!canSave}>
                {state === 'saving' ? 'Saving…' : state === 'saved' ? 'Saved ✓' : 'Save password'}
              </button>
              <button className="btn btn-ghost" onClick={() => { setOpen(false); setError(''); setPw(''); setConfirm('') }}>Cancel</button>
            </div>
          </div>
        )}
      </div>
    </div>
  )
}

function ClearProgressRow({ user }) {
  const { attempts } = useAttempts(user)
  const count = completedAttempts(attempts).length
  const [confirming, setConfirming] = useState(false)
  const [state, setState] = useState('idle')

  async function clear() {
    if (!user) return
    setState('clearing')
    const { error } = await supabase.from('attempts').delete().eq('user_id', user.id)
    setState(error ? 'idle' : 'done')
    setConfirming(false)
  }

  return (
    <div className="setting-row setting-row--stack setting-danger">
      <div className="setting-label">
        <h3>Clear progress</h3>
        <p>{state === 'done'
          ? 'Your results have been cleared.'
          : 'Delete every result but keep your account. This cannot be undone.'}</p>
      </div>
      <div className="setting-control">
        {state === 'done' ? (
          <span className="setting-cleared">Cleared</span>
        ) : !confirming ? (
          <button className="btn setting-danger-btn" disabled={count === 0} onClick={() => setConfirming(true)}>
            Clear progress
          </button>
        ) : (
          <div className="setting-actions">
            <span className="setting-confirm-q">Delete all {count} results?</span>
            <button className="btn setting-danger-btn" onClick={clear} disabled={state === 'clearing'}>
              {state === 'clearing' ? 'Clearing…' : 'Yes, delete'}
            </button>
            <button className="btn btn-ghost" onClick={() => setConfirming(false)}>Cancel</button>
          </div>
        )}
      </div>
    </div>
  )
}

/* ── Building blocks ──────────────────────────────────────────────────────── */

function SectionTitle({ children }) {
  return <h2 className="settings-section-title">{children}</h2>
}

function Row({ label, help, helpClass = '', children }) {
  return (
    <div className="setting-row">
      <div className="setting-label">
        <h3>{label}</h3>
        {help && <p className={helpClass}>{help}</p>}
      </div>
      <div className="setting-control">{children}</div>
    </div>
  )
}

/* ── Icons (inline, currentColor) ─────────────────────────────────────────── */

function IconGeneral() {
  return (
    <svg width="17" height="17" viewBox="0 0 24 24" fill="none" aria-hidden="true">
      <circle cx="12" cy="12" r="3.2" stroke="currentColor" strokeWidth="1.6" />
      <path d="M12 2v3M12 19v3M2 12h3M19 12h3M5 5l2 2M17 17l2 2M19 5l-2 2M7 17l-2 2" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" />
    </svg>
  )
}
function IconAccount() {
  return (
    <svg width="17" height="17" viewBox="0 0 24 24" fill="none" aria-hidden="true">
      <circle cx="12" cy="8" r="4" stroke="currentColor" strokeWidth="1.6" />
      <path d="M4 20a8 8 0 0 1 16 0" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" />
    </svg>
  )
}
function IconPrivacy() {
  return (
    <svg width="17" height="17" viewBox="0 0 24 24" fill="none" aria-hidden="true">
      <rect x="5" y="11" width="14" height="9" rx="2" stroke="currentColor" strokeWidth="1.6" />
      <path d="M8 11V8a4 4 0 0 1 8 0v3" stroke="currentColor" strokeWidth="1.6" />
    </svg>
  )
}
