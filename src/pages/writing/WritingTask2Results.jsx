import { useEffect, useState } from 'react'
import { useParams, useNavigate, useLocation } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { WritingFeedback } from '../../components/ai/WritingFeedback'
import { renderFeedbackSection } from '../../lib/writingFeedbackPdf'
import './WritingTask1Results.css'

// ── Helpers ───────────────────────────────────────────────────────────────────

function formatDuration(seconds) {
  const m = Math.floor(seconds / 60)
  const s = seconds % 60
  if (m === 0) return `${s}s`
  return s === 0 ? `${m} min` : `${m} min ${s}s`
}

function wordCountClass(count, min) {
  if (count >= min) return 'wr-wc-good'
  if (count >= Math.floor(min * 0.67)) return 'wr-wc-warn'
  return 'wr-wc-low'
}

// ── PDF generation ────────────────────────────────────────────────────────────

async function downloadPDF({ promptTitle, promptText, essay, wordCount, durationSeconds, feedback }) {
  const { default: jsPDF } = await import('jspdf')

  const pdf    = new jsPDF({ orientation: 'portrait', unit: 'mm', format: 'a4' })
  const W      = 210
  const MARGIN = 18
  const CONTENT = W - MARGIN * 2
  let y        = MARGIN

  // ── Header
  pdf.setFillColor(26, 86, 164)
  pdf.rect(0, 0, W, 12, 'F')
  pdf.setFont('helvetica', 'bold')
  pdf.setFontSize(9)
  pdf.setTextColor(255, 255, 255)
  pdf.text('CDI Practice — Writing Task 2', MARGIN, 8)
  pdf.setTextColor(0, 0, 0)

  y = 20

  // ── Prompt title
  pdf.setFont('helvetica', 'bold')
  pdf.setFontSize(14)
  pdf.text(promptTitle ?? 'Writing Task 2', MARGIN, y)
  y += 8

  // ── Task instruction
  pdf.setFont('helvetica', 'italic')
  pdf.setFontSize(8)
  pdf.setTextColor(130, 130, 130)
  pdf.text('Give reasons for your answer and include any relevant examples from your own knowledge or experience.', MARGIN, y, { maxWidth: CONTENT })
  y += 7
  pdf.setTextColor(0, 0, 0)

  // ── Prompt text
  pdf.setFont('helvetica', 'normal')
  pdf.setFontSize(10)
  pdf.setTextColor(40, 40, 40)
  const promptLines = pdf.splitTextToSize(promptText ?? '', CONTENT)
  pdf.text(promptLines, MARGIN, y)
  y += promptLines.length * 4.5 + 8
  pdf.setTextColor(0, 0, 0)

  // ── Divider
  pdf.setDrawColor(200, 200, 200)
  pdf.line(MARGIN, y, W - MARGIN, y)
  y += 6

  // ── "Your Response" heading
  pdf.setFont('helvetica', 'bold')
  pdf.setFontSize(11)
  pdf.text('Your Response', MARGIN, y)
  y += 6

  // ── Essay body
  pdf.setFont('helvetica', 'normal')
  pdf.setFontSize(10)
  const essayLines = pdf.splitTextToSize(essay || '(no response)', CONTENT)
  const lineH = 5
  for (const line of essayLines) {
    if (y > 277) { pdf.addPage(); y = MARGIN }
    pdf.text(line, MARGIN, y)
    y += lineH
  }

  y += 4

  // ── Stats footer
  pdf.setFont('helvetica', 'normal')
  pdf.setFontSize(8.5)
  pdf.setTextColor(100, 100, 100)
  pdf.text(
    `Word count: ${wordCount}   |   Time spent: ${formatDuration(durationSeconds)}`,
    MARGIN,
    y,
  )
  y += 8

  // ── AI feedback (if the student generated it)
  pdf.setTextColor(0, 0, 0)
  renderFeedbackSection(pdf, feedback, { margin: MARGIN, contentWidth: CONTENT, y, pageBottom: 277 })

  const safe = (promptTitle ?? 'task2').replace(/[^a-z0-9]/gi, '-').toLowerCase()
  pdf.save(`CDI-Writing-${safe}.pdf`)
}

// ── Component ─────────────────────────────────────────────────────────────────

export default function WritingTask2Results() {
  const { attemptId } = useParams()
  const navigate      = useNavigate()

  const [attempt,   setAttempt]   = useState(null)
  const [prompt,    setPrompt]    = useState(null)
  const [loading,   setLoading]   = useState(true)
  const [loadError, setLoadError] = useState('')
  const [pdfBusy,   setPdfBusy]   = useState(false)
  const [aiFeedback, setAiFeedback] = useState(null)

  useEffect(() => {
    async function load() {
      const { data: att, error: e1 } = await supabase
        .from('writing_attempts')
        .select('*')
        .eq('id', attemptId)
        .single()
      if (e1 || !att) { setLoadError('Result not found.'); setLoading(false); return }
      setAttempt(att)

      if (att.prompt_id) {
        const { data: p } = await supabase
          .from('writing_prompts')
          .select('*')
          .eq('id', att.prompt_id)
          .single()
        if (p) setPrompt(p)
      }
      setLoading(false)
    }
    load()
  }, [attemptId])

  async function handleDownloadPDF() {
    if (pdfBusy) return
    setPdfBusy(true)
    try {
      await downloadPDF({
        promptTitle:     prompt?.title,
        promptText:      prompt?.prompt,
        essay:           attempt?.essay ?? '',
        wordCount:       attempt?.word_count ?? 0,
        durationSeconds: attempt?.duration_seconds ?? 0,
        feedback:        aiFeedback,
      })
    } finally {
      setPdfBusy(false)
    }
  }

  if (loading) return <div className="wr-loading" aria-live="polite">Loading result…</div>

  if (loadError) {
    return (
      <div className="wr-page">
        <p className="wr-error" role="alert">{loadError}</p>
        <button className="btn btn-primary" onClick={() => navigate('/writing')}>
          Back to Writing
        </button>
      </div>
    )
  }

  const minWords = prompt?.min_words ?? 250
  const wc       = attempt.word_count
  const wcClass  = wordCountClass(wc, minWords)

  return (
    <div className="wr-page">
      {/* ── Summary card ── */}
      <div className="wr-summary-card">
        <h1 className="wr-title">Task 2 Submitted</h1>
        <p className="wr-prompt-title">{prompt?.title ?? 'Writing Task 2'}</p>

        <div className="wr-stats-row">
          <div className="wr-stat-block">
            <span className={`wr-stat-value ${wcClass}`}>{wc}</span>
            <span className="wr-stat-label">Words</span>
            {wc < minWords && (
              <span className="wr-stat-note">min {minWords}</span>
            )}
          </div>
          <div className="wr-stat-block">
            <span className="wr-stat-value">{formatDuration(attempt.duration_seconds)}</span>
            <span className="wr-stat-label">Time spent</span>
          </div>
        </div>

        <div className="wr-actions">
          <button className="btn btn-outline" onClick={() => navigate('/writing')}>
            ← Back to Writing
          </button>
          <button
            className="btn btn-primary"
            onClick={handleDownloadPDF}
            disabled={pdfBusy}
          >
            {pdfBusy ? 'Building PDF…' : '⬇ Download PDF'}
          </button>
        </div>
      </div>

      {/* ── Prompt card ── */}
      {prompt && (
        <div className="wr-prompt-card">
          <h2 className="wr-section-heading">Prompt</h2>
          <p className="wr-prompt-text">{prompt.prompt}</p>
        </div>
      )}

      {/* ── Essay card ── */}
      <div className="wr-essay-card">
        <h2 className="wr-section-heading">Your Response</h2>
        <div className="wr-essay-body">
          {attempt.essay
            ? attempt.essay.split('\n').map((para, i) =>
                para.trim() ? <p key={i}>{para}</p> : <br key={i} />
              )
            : <p className="wr-empty-essay">(No response submitted)</p>
          }
        </div>
        <div className="wr-essay-footer">
          <span className={`wr-wc-chip ${wcClass}`}>{wc} words</span>
          {wc >= minWords
            ? <span className="wr-wc-ok">✓ Meets the {minWords}-word minimum</span>
            : <span className="wr-wc-short">Below the {minWords}-word minimum</span>
          }
        </div>
      </div>

      {/* ── AI feedback ── */}
      {attempt.essay && (
        <WritingFeedback
          task="task2"
          promptText={prompt?.prompt}
          essay={attempt.essay}
          minWords={minWords}
          onResult={setAiFeedback}
        />
      )}
    </div>
  )
}
