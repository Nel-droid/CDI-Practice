/**
 * Live requirement list shown under the password field while a new password
 * is being typed. Each rule ticks green the moment it's satisfied.
 */
export function PasswordChecklist({ checks }) {
  return (
    <ul className="pw-checklist" aria-label="Password requirements">
      {checks.map(c => (
        <li key={c.id} className={'pw-check' + (c.passed ? ' is-met' : '')}>
          <span className="pw-check-mark" aria-hidden="true">
            {c.passed ? <TickIcon /> : <DotIcon />}
          </span>
          {c.label}
        </li>
      ))}
    </ul>
  )
}

function TickIcon() {
  return (
    <svg width="12" height="12" viewBox="0 0 12 12" fill="none">
      <path d="M2.5 6.2 5 8.7l4.5-5" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  )
}

function DotIcon() {
  return (
    <svg width="12" height="12" viewBox="0 0 12 12" fill="none">
      <circle cx="6" cy="6" r="1.5" fill="currentColor" />
    </svg>
  )
}
