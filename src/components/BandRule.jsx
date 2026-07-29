import './BandRule.css'

const BANDS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
const pct = band => (band / 9) * 100

/**
 * The band scale as a live instrument.
 *
 * The landing page uses the same rule to explain how IELTS reports a score;
 * here it carries the candidate's own position — where they are now, and the
 * band they are aiming for — so the signature element does real work rather
 * than decorating the page.
 */
export default function BandRule({ current = null, target = null, predicted = null, size = 'lg' }) {
  const reached = current != null && target != null && current >= target
  // Only draw the projection when it says something new — ahead of where you
  // are now and not already at the target.
  const showPredicted =
    predicted != null && current != null && predicted > current && !reached

  return (
    <div className={`brule brule--${size}`}>
      <div className="brule-track">
        {/* Achieved span */}
        {current != null && (
          <div
            className={'brule-fill' + (reached ? ' brule-fill--reached' : '')}
            style={{ width: `${pct(current)}%` }}
          />
        )}

        {/* Projected span — the ground your trend would cover next, hatched */}
        {showPredicted && (
          <div
            className="brule-fill-projected"
            style={{ left: `${pct(current)}%`, width: `${pct(predicted) - pct(current)}%` }}
          />
        )}

        {/* Ticks */}
        <div className="brule-ticks">
          {BANDS.map((b, i) => (
            <div className="brule-tg" key={b}>
              <span className="brule-tick brule-tick--major" />
              <span className="brule-label num">{b}</span>
              {i < BANDS.length - 1 && <span className="brule-tick brule-tick--minor" />}
            </div>
          ))}
        </div>

        {/* Target marker */}
        {target != null && (
          <div className="brule-target" style={{ left: `${pct(target)}%` }}>
            <span className="brule-flag num">Target {target}</span>
          </div>
        )}

        {/* Predicted marker (hollow — a projection, not an achieved result) */}
        {showPredicted && (
          <div className="brule-predicted" style={{ left: `${pct(predicted)}%` }}>
            <span className="brule-predicted-dot" />
            <span className="brule-predicted-val num">{predicted}</span>
          </div>
        )}

        {/* Current marker */}
        {current != null && (
          <div className="brule-now" style={{ left: `${pct(current)}%` }}>
            <span className="brule-now-dot" />
            <span className="brule-now-val num">{current}</span>
          </div>
        )}
      </div>
    </div>
  )
}
