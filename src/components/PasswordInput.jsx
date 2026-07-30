import { useState } from 'react'
import './PasswordInput.css'

/**
 * Password field with a show/hide toggle. Forwards every extra prop to the
 * underlying <input>, so it drops in wherever a plain password input was used.
 */
export function PasswordInput({ id, value, onChange, className = '', ...rest }) {
  const [visible, setVisible] = useState(false)

  return (
    <div className={'pw-field ' + className}>
      <input
        id={id}
        type={visible ? 'text' : 'password'}
        value={value}
        onChange={onChange}
        {...rest}
      />
      <button
        type="button"
        className="pw-toggle"
        onClick={() => setVisible(v => !v)}
        aria-label={visible ? 'Hide password' : 'Show password'}
        aria-pressed={visible}
        title={visible ? 'Hide password' : 'Show password'}
        tabIndex={-1}
      >
        {visible ? <EyeOff /> : <Eye />}
      </button>
    </div>
  )
}

function Eye() {
  return (
    <svg width="18" height="18" viewBox="0 0 20 20" fill="none" aria-hidden="true">
      <path d="M1.5 10S4.5 4 10 4s8.5 6 8.5 6-3 6-8.5 6-8.5-6-8.5-6Z"
        stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
      <circle cx="10" cy="10" r="2.5" stroke="currentColor" strokeWidth="1.5" />
    </svg>
  )
}

function EyeOff() {
  return (
    <svg width="18" height="18" viewBox="0 0 20 20" fill="none" aria-hidden="true">
      <path d="M8 4.2A8.2 8.2 0 0 1 10 4c5.5 0 8.5 6 8.5 6a14.6 14.6 0 0 1-2.2 2.9M4.7 5.7A14.7 14.7 0 0 0 1.5 10S4.5 16 10 16a8 8 0 0 0 3.3-.7"
        stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M8.2 8.3a2.5 2.5 0 0 0 3.5 3.5M2.5 2.5l15 15"
        stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  )
}
