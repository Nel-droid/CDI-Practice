// Renders an AI feedback block into an existing jsPDF document, handling page
// breaks. Shared by all three Writing results pages so the PDF layout stays
// consistent. ASCII-only text (jsPDF's default font has no tick/bullet glyphs).

export function renderFeedbackSection(pdf, feedback, opts = {}) {
  if (!feedback) return opts.y ?? 20

  const margin = opts.margin ?? 18
  const width = opts.contentWidth ?? 174
  const pageBottom = opts.pageBottom ?? 277
  let y = opts.y ?? 20

  const ensure = needed => {
    if (y + needed > pageBottom) { pdf.addPage(); y = margin }
  }
  const paragraph = (text, { size = 9.5, indent = 0, color = [50, 50, 50], style = 'normal', gap = 3 } = {}) => {
    if (!text) return
    pdf.setFont('helvetica', style); pdf.setFontSize(size); pdf.setTextColor(...color)
    const lines = pdf.splitTextToSize(String(text), width - indent)
    const lh = size * 0.48
    ensure(lines.length * lh + gap)
    pdf.text(lines, margin + indent, y)
    y += lines.length * lh + gap
    pdf.setTextColor(0, 0, 0)
  }

  // ── Section heading + overall band ──
  ensure(16)
  pdf.setDrawColor(200, 200, 200); pdf.line(margin, y, margin + width, y); y += 7
  pdf.setFont('helvetica', 'bold'); pdf.setFontSize(13); pdf.setTextColor(26, 86, 164)
  pdf.text('AI Feedback', margin, y)
  if (feedback.estimatedBand != null) {
    pdf.text(`Estimated band ${feedback.estimatedBand}`, margin + width, y, { align: 'right' })
  }
  y += 7
  pdf.setTextColor(0, 0, 0)

  paragraph(feedback.summary, { size: 10, style: 'italic', color: [60, 60, 60], gap: 5 })

  // ── Criteria ──
  for (const c of feedback.criteria || []) {
    pdf.setFont('helvetica', 'bold'); pdf.setFontSize(10.5); ensure(6)
    pdf.text(`${c.name} - Band ${c.band}`, margin, y); y += 5
    paragraph(c.comment, { gap: 4 })
  }

  const list = (title, items) => {
    if (!Array.isArray(items) || !items.length) return
    pdf.setFont('helvetica', 'bold'); pdf.setFontSize(10.5); ensure(6)
    pdf.text(title, margin, y); y += 5
    for (const it of items) paragraph('-  ' + it, { indent: 3, gap: 1.5 })
    y += 2
  }
  list('What worked', feedback.strengths)
  list('Focus next on', feedback.improvements)

  // ── Sentence upgrades ──
  if (Array.isArray(feedback.corrections) && feedback.corrections.length) {
    pdf.setFont('helvetica', 'bold'); pdf.setFontSize(10.5); ensure(6)
    pdf.text('Sentence upgrades', margin, y); y += 5
    for (const c of feedback.corrections) {
      paragraph('Instead of:  ' + (c.original || ''), { size: 9, style: 'italic', color: [150, 60, 60], indent: 3, gap: 1 })
      paragraph('Try:  ' + (c.better || ''), { size: 9.5, color: [30, 110, 70], indent: 3, gap: 1 })
      if (c.why) paragraph(c.why, { size: 8.5, style: 'italic', color: [110, 110, 110], indent: 3, gap: 3 })
    }
  }

  paragraph(
    'AI practice estimate to guide your revision - not an official IELTS score.',
    { size: 8, style: 'italic', color: [120, 120, 120], gap: 2 },
  )

  return y
}
