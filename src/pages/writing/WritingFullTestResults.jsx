import { useEffect, useState } from 'react'
import { useParams, useNavigate, useLocation } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { writingChartUrl } from '../../lib/s3assets'
import { WritingFeedback } from '../../components/ai/WritingFeedback'
import { renderFeedbackSection } from '../../lib/writingFeedbackPdf'
import './WritingTask1Results.css'
import './WritingFullTestResults.css'

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

// ── Build composite chart+annotation image ────────────────────────────────────

async function buildCompositeDataUrl(chartUrl, annotationDataUrl) {
  if (!chartUrl) return null
  try {
    const res  = await fetch(chartUrl, { mode: 'cors' })
    const blob = await res.blob()
    const bmp  = await createImageBitmap(blob)
    const canvas = document.createElement('canvas')
    canvas.width  = bmp.width
    canvas.height = bmp.height
    const ctx = canvas.getContext('2d')
    ctx.drawImage(bmp, 0, 0)
    if (annotationDataUrl) {
      const annImg = new Image()
      annImg.src = annotationDataUrl
      await new Promise(r => { annImg.onload = r; annImg.onerror = r })
      ctx.drawImage(annImg, 0, 0, canvas.width, canvas.height)
    }
    return canvas.toDataURL('image/jpeg', 0.92)
  } catch {
    return null
  }
}

// ── PDF generation ────────────────────────────────────────────────────────────

async function downloadPDF({ t1Prompt, t2Prompt, t1Attempt, t2Attempt, compositeDataUrl, totalSeconds, t1Feedback, t2Feedback }) {
  const { default: jsPDF } = await import('jspdf')
  const pdf    = new jsPDF({ orientation: 'portrait', unit: 'mm', format: 'a4' })
  const W      = 210
  const MARGIN = 18
  const CONTENT = W - MARGIN * 2
  let y = MARGIN

  // ── Header
  pdf.setFillColor(26, 86, 164)
  pdf.rect(0, 0, W, 12, 'F')
  pdf.setFont('helvetica', 'bold')
  pdf.setFontSize(9)
  pdf.setTextColor(255, 255, 255)
  pdf.text('CDI Practice — Writing Full Test', MARGIN, 8)
  pdf.setTextColor(0, 0, 0)
  y = 20

  // ─── TASK 1 ───────────────────────────────────────────────────────────────
  pdf.setFont('helvetica', 'bold')
  pdf.setFontSize(13)
  pdf.text('Task 1 — Chart / Graph Description', MARGIN, y)
  y += 7

  if (t1Prompt) {
    pdf.setFont('helvetica', 'italic')
    pdf.setFontSize(9)
    pdf.setTextColor(80, 80, 80)
    const t1Lines = pdf.splitTextToSize(t1Prompt.prompt ?? '', CONTENT)
    pdf.text(t1Lines, MARGIN, y)
    y += t1Lines.length * 4.5 + 5
    pdf.setTextColor(0, 0, 0)
  }

  if (compositeDataUrl) {
    const tmpImg = new Image()
    tmpImg.src = compositeDataUrl
    await new Promise(r => { tmpImg.onload = r })
    const ratio = tmpImg.naturalHeight / tmpImg.naturalWidth
    const imgW  = Math.min(CONTENT, 160)
    const imgH  = Math.min(imgW * ratio, 80)
    if (y + imgH > 270) { pdf.addPage(); y = MARGIN }
    pdf.addImage(compositeDataUrl, 'JPEG', MARGIN, y, imgW, imgH)
    y += imgH + 6
  }

  pdf.setFont('helvetica', 'bold')
  pdf.setFontSize(10)
  pdf.text('Your Response', MARGIN, y)
  y += 5
  pdf.setFont('helvetica', 'normal')
  pdf.setFontSize(10)
  const t1Essay = pdf.splitTextToSize(t1Attempt?.essay || '(no response)', CONTENT)
  for (const line of t1Essay) {
    if (y > 277) { pdf.addPage(); y = MARGIN }
    pdf.text(line, MARGIN, y)
    y += 5
  }
  pdf.setFont('helvetica', 'normal')
  pdf.setFontSize(8.5)
  pdf.setTextColor(120, 120, 120)
  pdf.text(`Task 1 words: ${t1Attempt?.word_count ?? 0}`, MARGIN, y + 4)
  pdf.setTextColor(0, 0, 0)
  y += 12

  if (t1Feedback) {
    y = renderFeedbackSection(pdf, t1Feedback, { margin: MARGIN, contentWidth: CONTENT, y, pageBottom: 277 })
    y += 4
  }

  // ─── TASK 2 ───────────────────────────────────────────────────────────────
  if (y + 30 > 277) { pdf.addPage(); y = MARGIN }
  else {
    pdf.setDrawColor(200, 200, 200)
    pdf.line(MARGIN, y, W - MARGIN, y)
    y += 6
  }

  pdf.setFont('helvetica', 'bold')
  pdf.setFontSize(13)
  pdf.text('Task 2 — Essay', MARGIN, y)
  y += 7

  if (t2Prompt) {
    pdf.setFont('helvetica', 'italic')
    pdf.setFontSize(9)
    pdf.setTextColor(80, 80, 80)
    const t2Lines = pdf.splitTextToSize(t2Prompt.prompt ?? '', CONTENT)
    pdf.text(t2Lines, MARGIN, y)
    y += t2Lines.length * 4.5 + 5
    pdf.setTextColor(0, 0, 0)
  }

  pdf.setFont('helvetica', 'bold')
  pdf.setFontSize(10)
  pdf.text('Your Response', MARGIN, y)
  y += 5
  pdf.setFont('helvetica', 'normal')
  pdf.setFontSize(10)
  const t2Essay = pdf.splitTextToSize(t2Attempt?.essay || '(no response)', CONTENT)
  for (const line of t2Essay) {
    if (y > 277) { pdf.addPage(); y = MARGIN }
    pdf.text(line, MARGIN, y)
    y += 5
  }

  // ─── Footer ───────────────────────────────────────────────────────────────
  y += 4
  pdf.setFont('helvetica', 'normal')
  pdf.setFontSize(8.5)
  pdf.setTextColor(100, 100, 100)
  pdf.text(
    `Task 2 words: ${t2Attempt?.word_count ?? 0}   |   Total time: ${formatDuration(totalSeconds)}`,
    MARGIN, y,
  )
  y += 8

  if (t2Feedback) {
    pdf.setTextColor(0, 0, 0)
    renderFeedbackSection(pdf, t2Feedback, { margin: MARGIN, contentWidth: CONTENT, y, pageBottom: 277 })
  }

  pdf.save('CDI-Writing-Full-Test.pdf')
}

// ── Component ─────────────────────────────────────────────────────────────────

export default function WritingFullTestResults() {
  const { sessionId } = useParams()
  const navigate      = useNavigate()
  const { state }     = useLocation()

  const annotationDataUrl = state?.task1AnnotationDataUrl ?? null
  const [chartUrl,  setChartUrl]  = useState(state?.task1ChartUrl ?? null)

  const [session,   setSession]   = useState(null)
  const [t1Prompt,  setT1Prompt]  = useState(null)
  const [t2Prompt,  setT2Prompt]  = useState(null)
  const [t1Attempt, setT1Attempt] = useState(null)
  const [t2Attempt, setT2Attempt] = useState(null)
  const [loading,   setLoading]   = useState(true)
  const [loadError, setLoadError] = useState('')
  const [pdfBusy,   setPdfBusy]   = useState(false)
  const [t1Feedback, setT1Feedback] = useState(null)
  const [t2Feedback, setT2Feedback] = useState(null)

  useEffect(() => {
    async function load() {
      const { data: sess, error: e } = await supabase
        .from('full_test_sessions')
        .select('*')
        .eq('id', sessionId)
        .single()
      if (e || !sess) { setLoadError('Session not found.'); setLoading(false); return }
      setSession(sess)

      const loads = []
      if (sess.task1_prompt_id)  loads.push(supabase.from('writing_prompts').select('*').eq('id', sess.task1_prompt_id).single().then(r => setT1Prompt(r.data)))
      if (sess.task2_prompt_id)  loads.push(supabase.from('writing_prompts').select('*').eq('id', sess.task2_prompt_id).single().then(r => setT2Prompt(r.data)))
      if (sess.task1_attempt_id) loads.push(supabase.from('writing_attempts').select('*').eq('id', sess.task1_attempt_id).single().then(r => setT1Attempt(r.data)))
      if (sess.task2_attempt_id) loads.push(supabase.from('writing_attempts').select('*').eq('id', sess.task2_attempt_id).single().then(r => setT2Attempt(r.data)))
      await Promise.all(loads)

      // Re-fetch chart signed URL if state didn't carry it
      if (!chartUrl && sess.task1_prompt_id) {
        const { data: p1 } = await supabase.from('writing_prompts').select('chart_path').eq('id', sess.task1_prompt_id).single()
        if (p1?.chart_path) {
          setChartUrl(writingChartUrl(p1.chart_path))
        }
      }

      setLoading(false)
    }
    load()
  }, [sessionId])

  async function handleDownloadPDF() {
    if (pdfBusy) return
    setPdfBusy(true)
    try {
      const compositeDataUrl = await buildCompositeDataUrl(chartUrl, annotationDataUrl)
      await downloadPDF({
        t1Prompt,
        t2Prompt,
        t1Attempt,
        t2Attempt,
        compositeDataUrl,
        totalSeconds: session?.duration_seconds ?? 0,
        t1Feedback,
        t2Feedback,
      })
    } finally {
      setPdfBusy(false)
    }
  }

  if (loading) return <div className="wr-loading" aria-live="polite">Loading results…</div>
  if (loadError) return (
    <div className="wr-page">
      <p className="wr-error" role="alert">{loadError}</p>
      <button className="btn btn-primary" onClick={() => navigate('/writing')}>Back to Writing</button>
    </div>
  )

  const t1Min = t1Prompt?.min_words ?? 150
  const t2Min = t2Prompt?.min_words ?? 250
  const t1Wc  = t1Attempt?.word_count ?? 0
  const t2Wc  = t2Attempt?.word_count ?? 0

  return (
    <div className="wr-page">

      {/* ── Summary card ── */}
      <div className="wr-summary-card">
        <h1 className="wr-title">Full Test Complete</h1>
        <p className="wr-prompt-title">Writing Task 1 + Task 2</p>

        <div className="wr-stats-row">
          <div className="wr-stat-block">
            <span className={`wr-stat-value ${wordCountClass(t1Wc, t1Min)}`}>{t1Wc}</span>
            <span className="wr-stat-label">Task 1 Words</span>
          </div>
          <div className="wr-stat-block">
            <span className={`wr-stat-value ${wordCountClass(t2Wc, t2Min)}`}>{t2Wc}</span>
            <span className="wr-stat-label">Task 2 Words</span>
          </div>
          <div className="wr-stat-block">
            <span className="wr-stat-value">{formatDuration(session?.duration_seconds ?? 0)}</span>
            <span className="wr-stat-label">Total Time</span>
          </div>
        </div>

        <div className="wr-actions">
          <button className="btn btn-outline" onClick={() => navigate('/writing')}>
            ← Back to Writing
          </button>
          <button className="btn btn-primary" onClick={handleDownloadPDF} disabled={pdfBusy}>
            {pdfBusy ? 'Building PDF…' : '⬇ Download PDF'}
          </button>
        </div>
      </div>

      {/* ── Task 1 section ── */}
      <div className="wft-section-card">
        <h2 className="wft-section-heading">Task 1 — Chart Description</h2>

        {t1Prompt && <p className="wr-prompt-text">{t1Prompt.prompt}</p>}

        {chartUrl && (
          <div className="wr-chart-container" style={{ marginBottom: '1rem' }}>
            <img src={chartUrl} alt="Chart" className="wr-chart-img"
              onError={e => { e.currentTarget.style.display = 'none' }} />
            {annotationDataUrl && (
              <img src={annotationDataUrl} alt="Annotations" className="wr-chart-annotations" />
            )}
          </div>
        )}

        {t1Attempt ? (
          <div className="wr-essay-body">
            {t1Attempt.essay
              ? t1Attempt.essay.split('\n').map((p, i) => p.trim() ? <p key={i}>{p}</p> : <br key={i} />)
              : <p className="wr-empty-essay">(No response submitted)</p>
            }
          </div>
        ) : (
          <p className="wr-empty-essay">Task 1 was not completed.</p>
        )}

        {t1Attempt && (
          <div className="wr-essay-footer">
            <span className={`wr-wc-chip ${wordCountClass(t1Wc, t1Min)}`}>{t1Wc} words</span>
            {t1Wc >= t1Min
              ? <span className="wr-wc-ok">✓ Meets the {t1Min}-word minimum</span>
              : <span className="wr-wc-short">Below the {t1Min}-word minimum</span>
            }
          </div>
        )}

        {t1Attempt?.essay && (
          <WritingFeedback task="task1" promptText={t1Prompt?.prompt} essay={t1Attempt.essay} minWords={t1Min} onResult={setT1Feedback} />
        )}
      </div>

      {/* ── Task 2 section ── */}
      <div className="wft-section-card">
        <h2 className="wft-section-heading">Task 2 — Essay</h2>

        {t2Prompt && <p className="wr-prompt-text">{t2Prompt.prompt}</p>}

        {t2Attempt ? (
          <div className="wr-essay-body">
            {t2Attempt.essay
              ? t2Attempt.essay.split('\n').map((p, i) => p.trim() ? <p key={i}>{p}</p> : <br key={i} />)
              : <p className="wr-empty-essay">(No response submitted)</p>
            }
          </div>
        ) : (
          <p className="wr-empty-essay">Task 2 was not completed (time expired during Task 1).</p>
        )}

        {t2Attempt && (
          <div className="wr-essay-footer">
            <span className={`wr-wc-chip ${wordCountClass(t2Wc, t2Min)}`}>{t2Wc} words</span>
            {t2Wc >= t2Min
              ? <span className="wr-wc-ok">✓ Meets the {t2Min}-word minimum</span>
              : <span className="wr-wc-short">Below the {t2Min}-word minimum</span>
            }
          </div>
        )}

        {t2Attempt?.essay && (
          <WritingFeedback task="task2" promptText={t2Prompt?.prompt} essay={t2Attempt.essay} minWords={t2Min} onResult={setT2Feedback} />
        )}
      </div>

    </div>
  )
}
