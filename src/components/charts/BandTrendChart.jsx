import { useId, useState } from 'react'
import './charts.css'

/**
 * Band achieved over successive tests, one line per module.
 *
 * Change-over-time with 2 series → line + markers. Data is sparse (a candidate
 * may have three attempts), so markers are always drawn rather than relying on
 * the line alone. Identity is carried by the legend AND a direct end-label, so
 * the palette never has to do that job by itself.
 */

const PAD = { top: 16, right: 52, bottom: 28, left: 30 }
const VB = { w: 640, h: 220 }

const SERIES = [
  { key: 'reading',   label: 'Reading',   color: 'var(--chart-reading)' },
  { key: 'listening', label: 'Listening', color: 'var(--chart-listening)' },
]

export default function BandTrendChart({ trend, target = null }) {
  const gid = useId()
  const [hover, setHover] = useState(null)

  const present = SERIES.filter(s => (trend?.[s.key]?.length ?? 0) > 0)
  const allBands = present.flatMap(s => trend[s.key].map(p => p.band))
  if (allBands.length === 0) return null

  // Domain covers the data and the target, padded half a band, clamped to 0–9.
  const lo = Math.max(0, Math.floor(Math.min(...allBands, target ?? 9) - 0.5))
  const hi = Math.min(9, Math.ceil(Math.max(...allBands, target ?? 0) + 0.5))
  const span = Math.max(1, hi - lo)

  const plotW = VB.w - PAD.left - PAD.right
  const plotH = VB.h - PAD.top - PAD.bottom

  // x is a TIME scale shared by every series. Positioning by array index would
  // stretch each series across the full width independently, so a module with
  // fewer attempts would appear to stop early rather than sit on the date it
  // actually happened.
  const times = present.flatMap(s => trend[s.key].map(p => +new Date(p.date)))
  const tMin = Math.min(...times)
  const tMax = Math.max(...times)
  const tSpan = tMax - tMin
  const x = date => PAD.left + (tSpan === 0 ? plotW / 2 : ((+new Date(date) - tMin) / tSpan) * plotW)
  const y = b => PAD.top + plotH - ((b - lo) / span) * plotH

  // Whole-band gridlines only — half bands would crowd a 220px plot.
  const ticks = []
  for (let b = lo; b <= hi; b += 1) ticks.push(b)

  return (
    <figure className="chart">
      <div className="chart-legend" role="list">
        {present.map(s => (
          <span className="chart-legend-item" role="listitem" key={s.key}>
            <span className="chart-swatch" style={{ background: s.color }} aria-hidden="true" />
            {s.label}
          </span>
        ))}
        {target != null && (
          <span className="chart-legend-item chart-legend-item--target" role="listitem">
            <span className="chart-swatch chart-swatch--target" aria-hidden="true" />
            Target {target}
          </span>
        )}
      </div>

      <svg
        viewBox={`0 0 ${VB.w} ${VB.h}`}
        className="chart-svg"
        role="img"
        aria-label={
          `Band achieved over successive tests. ` +
          present.map(s =>
            `${s.label}: ${trend[s.key].map(p => p.band).join(', ')}.`
          ).join(' ')
        }
      >
        {/* Recessive grid */}
        {ticks.map(b => (
          <g key={b}>
            <line
              x1={PAD.left} x2={VB.w - PAD.right} y1={y(b)} y2={y(b)}
              stroke="var(--chart-grid)" strokeWidth="1"
            />
            <text x={PAD.left - 8} y={y(b) + 4} className="chart-tick" textAnchor="end">{b}</text>
          </g>
        ))}

        {/* Target reference — the band the candidate is actually chasing */}
        {target != null && target >= lo && target <= hi && (
          <line
            x1={PAD.left} x2={VB.w - PAD.right} y1={y(target)} y2={y(target)}
            stroke="var(--color-gold)" strokeWidth="2" strokeDasharray="5 4"
          />
        )}

        {present.map(s => {
          const pts = trend[s.key]
          const d = pts.map((p, i) => `${i === 0 ? 'M' : 'L'} ${x(p.date)} ${y(p.band)}`).join(' ')
          const last = pts[pts.length - 1]
          return (
            <g key={s.key}>
              {pts.length > 1 && (
                <path d={d} fill="none" stroke={s.color} strokeWidth="2"
                      strokeLinejoin="round" strokeLinecap="round" />
              )}
              {pts.map((p, i) => (
                <circle
                  key={p.id ?? i}
                  cx={x(p.date)} cy={y(p.band)} r="4.5"
                  fill={s.color}
                  stroke="var(--color-card)" strokeWidth="2"
                  onMouseEnter={() => setHover({ s: s.label, ...p, cx: x(p.date), cy: y(p.band) })}
                  onMouseLeave={() => setHover(null)}
                />
              ))}
              {/* Direct end-label: identity without relying on colour */}
              <text
                x={x(last.date) + 10} y={y(last.band) + 4}
                className="chart-endlabel" fill={s.color}
              >
                {s.label}
              </text>
            </g>
          )
        })}

        {hover && (
          <g pointerEvents="none">
            <line x1={hover.cx} x2={hover.cx} y1={PAD.top} y2={VB.h - PAD.bottom}
                  stroke="var(--chart-axis)" strokeWidth="1" strokeDasharray="3 3" />
            <circle cx={hover.cx} cy={hover.cy} r="7" fill="none"
                    stroke="var(--color-text)" strokeWidth="2" />
          </g>
        )}
      </svg>

      <figcaption className="chart-caption" aria-live="polite">
        {hover
          ? `${hover.s} · band ${hover.band} · ${new Date(hover.date).toLocaleDateString('en-GB', { day: 'numeric', month: 'short' })}`
          : 'Each point is one completed test, oldest first.'}
      </figcaption>

      {/* Table view — the chart is never the only way to read the data */}
      <details className="chart-table">
        <summary>View as table</summary>
        <table>
          <thead>
            <tr><th scope="col">Module</th><th scope="col">Date</th><th scope="col">Band</th></tr>
          </thead>
          <tbody>
            {present.flatMap(s => trend[s.key].map(p => (
              <tr key={`${s.key}-${p.id}`}>
                <td>{s.label}</td>
                <td>{new Date(p.date).toLocaleDateString('en-GB')}</td>
                <td className="num">{p.band}</td>
              </tr>
            )))}
          </tbody>
        </table>
      </details>
    </figure>
  )
}
