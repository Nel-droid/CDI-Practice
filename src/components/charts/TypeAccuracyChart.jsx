import { useState } from 'react'
import './charts.css'

/**
 * Accuracy per question type, weakest first.
 *
 * Magnitude across categories with long text labels → horizontal bars. One
 * series, so no legend box (the heading names it); every bar is directly
 * labelled with its value and its raw fraction, which is what tells a candidate
 * whether a low percentage is a real weakness or just two unlucky questions.
 */
export default function TypeAccuracyChart({
  rows,
  limit = 6,
  caption = 'Accuracy across every completed test, weakest task type first.',
}) {
  const [hover, setHover] = useState(null)
  const data = (rows ?? []).slice(0, limit)
  if (data.length === 0) return null

  return (
    <figure className="chart chart--bars">
      <ul className="bar-list">
        {data.map(r => {
          const pct = Math.round(r.accuracy * 100)
          return (
            <li
              key={r.type}
              className={'bar-row' + (hover === r.type ? ' is-hover' : '')}
              onMouseEnter={() => setHover(r.type)}
              onMouseLeave={() => setHover(null)}
            >
              <span className="bar-label" title={r.type}>{r.type}</span>
              <span className="bar-track">
                <span
                  className="bar-fill"
                  style={{ width: `${Math.max(pct, 1.5)}%` }}
                />
              </span>
              <span className="bar-value num">
                {pct}%
                <span className="bar-frac">{r.correct}/{r.total}</span>
              </span>
            </li>
          )
        })}
      </ul>

      <figcaption className="chart-caption">{caption}</figcaption>

      <details className="chart-table">
        <summary>View as table</summary>
        <table>
          <thead>
            <tr>
              <th scope="col">Question type</th>
              <th scope="col">Correct</th>
              <th scope="col">Asked</th>
              <th scope="col">Accuracy</th>
            </tr>
          </thead>
          <tbody>
            {(rows ?? []).map(r => (
              <tr key={r.type}>
                <td>{r.type}</td>
                <td className="num">{r.correct}</td>
                <td className="num">{r.total}</td>
                <td className="num">{Math.round(r.accuracy * 100)}%</td>
              </tr>
            ))}
          </tbody>
        </table>
      </details>
    </figure>
  )
}
