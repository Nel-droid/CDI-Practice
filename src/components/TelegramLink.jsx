import './TelegramLink.css'

// Single source of truth for the owner's contact handle.
const TELEGRAM_URL = 'https://t.me/ne_th_y_ch'

// Small Telegram contact link (icon + label). Used in the app footer and the
// landing footer, so it lives in one place. `color: inherit` lets it sit on
// both the theme-aware app footer and the always-dark landing footer.
export function TelegramLink({ label = 'Suggestions? Message me on Telegram', className = '' }) {
  return (
    <a
      className={'tg-link' + (className ? ' ' + className : '')}
      href={TELEGRAM_URL}
      target="_blank"
      rel="noopener noreferrer"
    >
      <svg
        className="tg-link-icon"
        viewBox="0 0 24 24"
        width="18"
        height="18"
        aria-hidden="true"
        focusable="false"
      >
        <path
          fill="currentColor"
          d="M9.417 15.181l-.397 5.584c.568 0 .814-.244 1.109-.537l2.663-2.545 5.518 4.041c1.012.564 1.725.267 1.998-.931L23.93 3.821c.321-1.496-.541-2.081-1.527-1.714L1.114 10.184c-1.462.564-1.44 1.373-.249 1.741l5.436 1.69L18.87 5.83c.594-.394 1.134-.176.69.218z"
        />
      </svg>
      <span>{label}</span>
    </a>
  )
}
