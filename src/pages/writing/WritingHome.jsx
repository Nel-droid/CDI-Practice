import { useEffect, useMemo, useRef, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import { TestCard } from '../../components/TestCard'
import '../reading/ReadingHome.css'
import './WritingHome.css'

const CHART_TYPES = [
  { key: 'bar',     label: 'Bar Chart',       ghost: 'B', desc: 'Compare values across categories with vertical or horizontal bars.' },
  { key: 'line',    label: 'Line Graph',      ghost: 'L', desc: 'Show how values change over time with connected data points.' },
  { key: 'pie',     label: 'Pie Chart',       ghost: 'P', desc: 'Illustrate proportions as segments of a whole circle.' },
  { key: 'table',   label: 'Table',           ghost: 'T', desc: 'Describe patterns in data arranged in rows and columns.' },
  { key: 'map',     label: 'Map',             ghost: 'M', desc: 'Describe geographical features or changes in a labelled area.' },
  { key: 'process', label: 'Process Diagram', ghost: 'D', desc: 'Explain stages in a linear sequence or cyclic process.' },
  { key: 'mixed',   label: 'Mixed',           ghost: '∞', desc: 'Describe a combination of two or more chart types together.' },
]

const CHART_TYPE_MAP = Object.fromEntries(CHART_TYPES.map(c => [c.key, c]))

const ESSAY_TYPES = [
  { key: 'opinion',          label: 'Opinion',                       ghost: 'O', desc: 'State your position clearly and maintain it throughout the essay.' },
  { key: 'discussion',       label: 'Discussion',                    ghost: 'D', desc: 'Cover both sides fairly, then give your own opinion clearly.' },
  { key: 'problem_solution', label: 'Problem / Solution',            ghost: 'P', desc: 'Clearly separate the causes or problems from your suggested solutions.' },
  { key: 'adv_disadv',       label: 'Advantages / Disadvantages',    ghost: 'A', desc: 'Present both sides evenhandedly; a personal opinion is not required unless asked.' },
  { key: 'outweigh',         label: 'Do the Advantages Outweigh?',   ghost: 'W', desc: 'Clearly state whether the advantages or disadvantages are greater overall.' },
  { key: 'two_part',         label: 'Two-Part Question',             ghost: 'Q', desc: 'Answer each question separately and completely; do not merge them.' },
  { key: 'causes_effects',   label: 'Causes and Effects',            ghost: 'C', desc: 'Distinguish clearly between why something is happening and what results from it.' },
  { key: 'hybrid',           label: 'Opinion with Discussion',       ghost: 'H', desc: 'Discuss both perspectives but make sure your own opinion is unmistakable.' },
]

const ESSAY_TYPE_MAP = Object.fromEntries(ESSAY_TYPES.map(e => [e.key, e]))

const TASK_META = {
  task1: { ghost: '1', tag: 'Task 1', title: 'Chart / Graph Description', desc: 'Describe bar charts, line graphs, pie charts, tables, maps, process diagrams, and mixed formats using factual language.', cta: '≥ 150 words · ~20 min' },
  task2: { ghost: '2', tag: 'Task 2', title: 'Essay',                      desc: 'Opinion, discussion, problem-solution, and advantage-disadvantage prompts. Write a well-structured academic essay.', cta: '≥ 250 words · ~40 min' },
  full:  { ghost: 'F', tag: 'Full Test', title: 'Task 1 + Task 2',         desc: 'A timed 60-minute writing test with both tasks in sequence. Download a combined PDF of your responses when finished.', cta: '60 min · Combined PDF' },
}

const TASK_TIPS = {
  task1: [
    'Spend about 20 minutes on Task 1. Aim for 150–200 words.',
    'Describe the overall trend first, then support with specific data.',
    'Use the annotation tools to mark up the chart as you plan your answer.',
    'Do not express personal opinions — only report what the data shows.',
  ],
  task2: [
    'Spend about 40 minutes on Task 2. Aim for 250–280 words.',
    'Plan your essay before writing: introduction, body paragraphs, conclusion.',
    'State your position clearly in the introduction.',
    'Support each point with a reason and/or example from your experience.',
    'Task 2 carries more marks than Task 1 — spend more time on it.',
  ],
}

export default function WritingHome() {
  const navigate = useNavigate()
  const { user } = useAuth()

  const [selectedTask,      setSelectedTask]      = useState(null)
  const [selectedChartType, setSelectedChartType] = useState(null)
  const [prompts,           setPrompts]           = useState([])
  const [loading,           setLoading]           = useState(false)
  const [error,             setError]             = useState('')
  const [startingFullTest,  setStartingFullTest]  = useState(false)
  const [fullTests,         setFullTests]         = useState([])
  const [loadingFullTests,  setLoadingFullTests]  = useState(false)

  // Reset sub-type selection whenever the top-level task changes
  useEffect(() => {
    setSelectedChartType(null)
  }, [selectedTask])

  // Fetch published full tests when Full Test is selected
  useEffect(() => {
    if (selectedTask !== 'full') return
    setLoadingFullTests(true)
    let q = supabase
      .from('full_tests')
      .select(`
        id, test_number, title, published,
        task1:writing_prompts!full_tests_task1_prompt_id_fkey(id, chart_type),
        task2:writing_prompts!full_tests_task2_prompt_id_fkey(id, chart_type)
      `)
      .order('test_number')
    if (!import.meta.env.DEV) q = q.eq('published', true)
    q.then(({ data }) => {
      setFullTests(data ?? [])
      setLoadingFullTests(false)
    })
  }, [selectedTask]) // eslint-disable-line react-hooks/exhaustive-deps

  // Fetch all prompts for the selected task (all chart types at once)
  useEffect(() => {
    if (!selectedTask || selectedTask === 'full') return
    setLoading(true)
    setError('')

    let query = supabase
      .from('writing_prompts')
      .select('id, task_type, chart_type, title, prompt, min_words, display_order, published')
      .eq('task_type', selectedTask)
      .order('display_order')
    if (!import.meta.env.DEV) query = query.eq('published', true)

    query.then(({ data, error: err }) => {
      if (err) setError('Could not load prompts. Please try again.')
      else setPrompts(data ?? [])
      setLoading(false)
    })
  }, [selectedTask]) // eslint-disable-line react-hooks/exhaustive-deps

  // Count prompts per chart type
  const chartTypeCounts = useMemo(() => {
    const counts = {}
    for (const p of prompts) {
      if (p.chart_type) counts[p.chart_type] = (counts[p.chart_type] || 0) + 1
    }
    return counts
  }, [prompts])

  // Filter prompts to the selected chart type
  const displayedPrompts = useMemo(() =>
    selectedChartType ? prompts.filter(p => p.chart_type === selectedChartType) : prompts
  , [prompts, selectedChartType])

  async function handleStartFullTest(ft) {
    if (startingFullTest) return
    setStartingFullTest(true)
    try {
      const { data: sess } = await supabase
        .from('full_test_sessions')
        .insert({
          user_id:        user.id,
          full_test_id:   ft.id,
          task1_prompt_id: ft.task1.id,
          task2_prompt_id: ft.task2.id,
        })
        .select('id')
        .single()
      if (!sess) { alert('Could not create test session.'); return }
      navigate(`/writing/full-test/exam/${sess.id}`)
    } catch {
      alert('Something went wrong. Please try again.')
    } finally {
      setStartingFullTest(false)
    }
  }

  // ── Level 1: Writing landing ──────────────────────────────────────────────
  if (selectedTask === null) {
    return (
      <div className="wh-page wh-page--wide" data-skill="writing">
        <header className="rh-header">
          <h1 className="rh-title">Writing Practice</h1>
          <p className="rh-subtitle">
            Select a task type to begin. Each type targets a distinct IELTS writing skill.
          </p>
        </header>

        <div className="wh-task-landing">
          {Object.entries(TASK_META).map(([key, meta]) => (
            <button key={key} className="wh-task-hero" onClick={() => setSelectedTask(key)}>
              <span className="wh-th-ghost" aria-hidden="true">{meta.ghost}</span>
              <div className="wh-th-tag">{meta.tag}</div>
              <div className="wh-th-title">{meta.title}</div>
              <div className="wh-th-desc">{meta.desc}</div>
              <div className="wh-th-cta">{meta.cta} →</div>
            </button>
          ))}
        </div>
      </div>
    )
  }

  // ── Level 2 (Task 1): Chart type selection ────────────────────────────────
  if (selectedTask === 'task1' && selectedChartType === null) {
    return (
      <div className="wh-page wh-page--wide" data-skill="writing">
        <button className="rh-back-btn" onClick={() => setSelectedTask(null)}>← Writing</button>

        <header className="rh-header">
          <div className="wh-task-tag">Task 1</div>
          <h1 className="rh-title">Chart / Graph Description</h1>
          <p className="rh-subtitle">Choose a chart type to see available prompts.</p>
        </header>

        <div className="wh-ct-grid">
          {CHART_TYPES.map(ct => {
            const count = chartTypeCounts[ct.key] ?? 0
            return (
              <button
                key={ct.key}
                className={`wh-ct-card ${count === 0 ? 'wh-ct-empty' : ''}`}
                onClick={() => count > 0 && setSelectedChartType(ct.key)}
                aria-disabled={count === 0}
              >
                <span className="wh-ct-ghost" aria-hidden="true">{ct.ghost}</span>
                <div className="wh-ct-name">{ct.label}</div>
                <div className="wh-ct-desc">{ct.desc}</div>
                {!loading && (
                  <div className="wh-ct-count">
                    {count > 0 ? `${count} prompt${count !== 1 ? 's' : ''} →` : 'Coming soon'}
                  </div>
                )}
              </button>
            )
          })}
        </div>

        <div className="rh-tips">
          <h2 className="rh-tips-title">Task 1 tips</h2>
          <ul className="rh-tips-list">
            {TASK_TIPS.task1.map((tip, i) => <li key={i}>{tip}</li>)}
          </ul>
        </div>
      </div>
    )
  }

  // ── Level 3 (Task 1): Prompts for selected chart type ─────────────────────
  if (selectedTask === 'task1' && selectedChartType !== null) {
    const ct = CHART_TYPE_MAP[selectedChartType]
    return (
      <div className="wh-page wh-page--wide" data-skill="writing">
        <button className="rh-back-btn" onClick={() => setSelectedChartType(null)}>
          ← All chart types
        </button>

        <header className="rh-header">
          <div className="wh-task-tag">Task 1 — {ct.label}</div>
          <h1 className="rh-title">{ct.label}</h1>
          <p className="rh-subtitle">{ct.desc}</p>
        </header>

        {error && <p className="rh-error" role="alert">{error}</p>}

        {loading ? (
          <div className="rh-loading" aria-live="polite">Loading prompts…</div>
        ) : displayedPrompts.length === 0 ? (
          <div className="rh-empty">
            <p className="rh-empty-title">No {ct.label} prompts yet</p>
            <p className="rh-empty-body">This category is coming soon. Check back later.</p>
          </div>
        ) : (
          <div className="test-grid">
            {displayedPrompts.map((p, i) => (
              <TestCard
                key={p.id}
                title={`${ct.label} ${i + 1}${import.meta.env.DEV && !p.published ? '  ·  DRAFT' : ''}`}
                ghost={String(i + 1)}
                status="notdone"
                items={[`Task 1 — ${ct.label}`]}
                meta={`Minimum ${p.min_words} words · ~20 min`}
                ctaLabel="Start"
                onStart={() => navigate(`/writing/task1/exam/${p.id}`)}
              />
            ))}
          </div>
        )}
      </div>
    )
  }

  // ── Level 2 (Task 2): Essay type selection ───────────────────────────────
  if (selectedTask === 'task2' && selectedChartType === null) {
    return (
      <div className="wh-page wh-page--wide" data-skill="writing">
        <button className="rh-back-btn" onClick={() => setSelectedTask(null)}>← Writing</button>

        <header className="rh-header">
          <div className="wh-task-tag">Task 2</div>
          <h1 className="rh-title">Essay</h1>
          <p className="rh-subtitle">Choose an essay type to see available prompts.</p>
        </header>

        <div className="wh-ct-grid">
          {ESSAY_TYPES.map(et => {
            const count = chartTypeCounts[et.key] ?? 0
            return (
              <button
                key={et.key}
                className={`wh-ct-card ${count === 0 ? 'wh-ct-empty' : ''}`}
                onClick={() => count > 0 && setSelectedChartType(et.key)}
                aria-disabled={count === 0}
              >
                <span className="wh-ct-ghost" aria-hidden="true">{et.ghost}</span>
                <div className="wh-ct-name">{et.label}</div>
                <div className="wh-ct-desc">{et.desc}</div>
                {!loading && (
                  <div className="wh-ct-count">
                    {count > 0 ? `${count} prompt${count !== 1 ? 's' : ''} →` : 'Coming soon'}
                  </div>
                )}
              </button>
            )
          })}
        </div>

        <div className="rh-tips">
          <h2 className="rh-tips-title">Task 2 tips</h2>
          <ul className="rh-tips-list">
            {TASK_TIPS.task2.map((tip, i) => <li key={i}>{tip}</li>)}
          </ul>
        </div>
      </div>
    )
  }

  // ── Level 3 (Task 2): Prompts for selected essay type ─────────────────────
  if (selectedTask === 'task2' && selectedChartType !== null) {
    const et = ESSAY_TYPE_MAP[selectedChartType]
    return (
      <div className="wh-page wh-page--wide" data-skill="writing">
        <button className="rh-back-btn" onClick={() => setSelectedChartType(null)}>
          ← All essay types
        </button>

        <header className="rh-header">
          <div className="wh-task-tag">Task 2 — {et.label}</div>
          <h1 className="rh-title">{et.label}</h1>
          <p className="rh-subtitle">{et.desc}</p>
        </header>

        {error && <p className="rh-error" role="alert">{error}</p>}

        {loading ? (
          <div className="rh-loading" aria-live="polite">Loading prompts…</div>
        ) : displayedPrompts.length === 0 ? (
          <div className="rh-empty">
            <p className="rh-empty-title">No {et.label} prompts yet</p>
            <p className="rh-empty-body">This category is coming soon. Check back later.</p>
          </div>
        ) : (
          <div className="test-grid">
            {displayedPrompts.map((p, i) => (
              <TestCard
                key={p.id}
                title={`${et.label} ${i + 1}${import.meta.env.DEV && !p.published ? '  ·  DRAFT' : ''}`}
                ghost={String(i + 1)}
                status="notdone"
                items={[`Task 2 — ${et.label}`]}
                meta={`Minimum ${p.min_words} words · ~40 min`}
                ctaLabel="Start"
                onStart={() => navigate(`/writing/task2/exam/${p.id}`)}
              />
            ))}
          </div>
        )}
      </div>
    )
  }

  // ── Level 2: Full Test — test list ───────────────────────────────────────
  return (
    <div className="wh-page wh-page--wide" data-skill="writing">
      <button className="rh-back-btn" onClick={() => setSelectedTask(null)}>← Writing</button>

      <header className="rh-header">
        <div className="wh-task-tag">{TASK_META.full.tag}</div>
        <h1 className="rh-title">{TASK_META.full.title}</h1>
        <p className="rh-subtitle">
          Choose a test to begin. Each test includes Task 1 (chart) + Task 2 (essay) with a shared 60-minute timer.
        </p>
      </header>

      {loadingFullTests ? (
        <div className="rh-loading" aria-live="polite">Loading tests…</div>
      ) : fullTests.length === 0 ? (
        <div className="rh-empty">
          <p className="rh-empty-title">No full tests available yet</p>
          <p className="rh-empty-body">Full tests are coming soon. Check back later.</p>
        </div>
      ) : (
        <div className="test-grid">
          {fullTests.map(ft => {
            const isDraft = import.meta.env.DEV && !ft.published
            return (
              <TestCard
                key={ft.id}
                title={(ft.title || `Full Test ${ft.test_number}`) + (isDraft ? '  ·  DRAFT' : '')}
                ghost={String(ft.test_number ?? '')}
                status="notdone"
                items={['Task 1', 'Task 2']}
                meta="60 min · ≥ 150 words + ≥ 250 words"
                ctaLabel={startingFullTest ? '…' : 'Start'}
                disabled={startingFullTest}
                onStart={() => handleStartFullTest(ft)}
              />
            )
          })}
        </div>
      )}
    </div>
  )
}
