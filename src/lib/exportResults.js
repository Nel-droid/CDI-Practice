/**
 * Export a candidate's results as a CSV file they can keep or share.
 *
 * One row per completed test — the same figures the dashboard shows — so a
 * candidate can track progress outside the app or hand it to a tutor.
 */

const HEADERS = ['Date', 'Skill', 'Band', 'Raw score', 'Total', 'Time (min)']

function csvCell(value) {
  const s = String(value ?? '')
  // Quote anything containing a comma, quote, or newline; double interior quotes.
  return /[",\n]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s
}

/** Build CSV text from completed attempts (newest first). */
export function resultsToCsv(attempts) {
  const rows = (attempts ?? [])
    .filter(a => a?.submitted_at && a?.band != null)
    .map(a => [
      new Date(a.submitted_at).toISOString().slice(0, 10),
      a.skill,
      a.band,
      a.raw_score ?? '',
      a.marked?.total ?? 40,
      a.duration_seconds != null ? Math.round(a.duration_seconds / 60) : '',
    ])

  return [HEADERS, ...rows]
    .map(cols => cols.map(csvCell).join(','))
    .join('\n')
}

/** Trigger a browser download of the given text as a file. */
export function downloadCsv(text, filename = 'cdi-results.csv') {
  const blob = new Blob([text], { type: 'text/csv;charset=utf-8' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = filename
  document.body.appendChild(a)
  a.click()
  a.remove()
  URL.revokeObjectURL(url)
}
