import './TestCard.css'

const STATUS_LABEL = { done: 'Done', inprogress: 'In progress', notdone: 'Not done' }

/**
 * A single test/prompt card used across the Reading, Listening and Writing
 * lists. Shows a title, a status pill, a Start button, and an "inside this
 * test" list of generic section labels (never the real passage/topic names).
 */
export function TestCard({
  title,
  status = 'notdone',
  items = [],
  insideLabel = 'Inside this test',
  meta,
  ctaLabel,
  onStart,
  disabled = false,
  footer,
  ghost,
}) {
  const cta = ctaLabel ?? (status === 'done' ? 'Retake' : 'Start')

  return (
    <article className="tcard" data-status={status}>
      {ghost != null && ghost !== '' && (
        <span className="tcard-ghost" aria-hidden="true">{ghost}</span>
      )}
      <div className="tcard-head">
        <h3 className="tcard-title">{title}</h3>
        <div className="tcard-head-right">
          {status && (
            <span className={`tcard-pill tcard-pill--${status}`}>
              {STATUS_LABEL[status] ?? status}
            </span>
          )}
          <button
            className="tcard-start"
            onClick={onStart}
            disabled={disabled}
            aria-label={`${cta}: ${title}`}
          >
            {disabled ? '…' : cta}
          </button>
        </div>
      </div>

      {meta && <p className="tcard-meta">{meta}</p>}

      {items.length > 0 && (
        <div className="tcard-body">
          <div className="tcard-inside-label">{insideLabel}</div>
          <ul className="tcard-items" role="list">
            {items.map((it, i) => (
              <li key={i} className="tcard-item">{it}</li>
            ))}
          </ul>
        </div>
      )}

      {footer && <div className="tcard-footer">{footer}</div>}
    </article>
  )
}
