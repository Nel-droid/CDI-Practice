import { useTheme } from '../context/ThemeContext'
import './BackgroundLayer.css'

// ── Plexus: a network of nodes and connecting lines (generated once) ──────────
const NODES = [
  [120, 90], [340, 150], [250, 320], [90, 380], [510, 100], [660, 250],
  [470, 380], [780, 130], [930, 300], [1080, 180], [1230, 330], [1360, 130],
  [1300, 450], [720, 500], [430, 580], [1010, 560], [1180, 670], [300, 720],
  [630, 740], [920, 780], [1240, 800],
]
const EDGES = [
  [0, 1], [1, 2], [2, 3], [0, 3], [1, 4], [4, 5], [5, 6], [2, 6], [6, 13],
  [4, 7], [7, 8], [8, 9], [9, 10], [10, 11], [9, 11], [8, 15], [10, 12],
  [12, 16], [13, 15], [13, 14], [14, 17], [14, 18], [18, 13], [18, 19],
  [19, 15], [19, 20], [20, 16], [16, 12], [5, 8], [6, 14], [15, 16], [7, 11],
  [17, 18],
]
const ACCENT_NODES = new Set([1, 5, 9, 13, 16, 18])

function Plexus() {
  return (
    <svg className="bg-svg" viewBox="0 0 1440 900" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <g className="bg-plexus-lines">
        {EDGES.map(([a, b], i) => (
          <line key={i} x1={NODES[a][0]} y1={NODES[a][1]} x2={NODES[b][0]} y2={NODES[b][1]} />
        ))}
      </g>
      <g className="bg-plexus-nodes">
        {NODES.map(([x, y], i) => (
          <circle key={i} cx={x} cy={y} r={ACCENT_NODES.has(i) ? 5 : 2.6}
            className={ACCENT_NODES.has(i) ? 'is-accent' : ''} />
        ))}
      </g>
    </svg>
  )
}

// ── Waves: a bundle of flowing stroked sine curves ────────────────────────────
function wavePath(yBase, amp, phase, cycles = 2.4, w = 1440) {
  let d = `M 0 ${yBase.toFixed(1)}`
  for (let x = 0; x <= w; x += 24) {
    const y = yBase + amp * Math.sin((x / w) * Math.PI * cycles + phase)
    d += ` L ${x} ${y.toFixed(1)}`
  }
  return d
}

function Waves() {
  const lines = Array.from({ length: 16 }, (_, i) => {
    const t = i / 15
    return {
      d: wavePath(300 + t * 300, 70 + t * 26, t * 2.6, 2.2 + t * 0.5),
      opacity: 0.10 + (1 - Math.abs(t - 0.5) * 2) * 0.22,
    }
  })
  return (
    <svg className="bg-svg" viewBox="0 0 1440 900" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs>
        <linearGradient id="bg-wave-grad" x1="0" y1="0" x2="1" y2="0">
          <stop offset="0" stopColor="#2f7bd6" />
          <stop offset="0.5" stopColor="#7c4dd6" />
          <stop offset="1" stopColor="#d64d6b" />
        </linearGradient>
      </defs>
      {lines.map((l, i) => (
        <path key={i} d={l.d} fill="none" stroke="url(#bg-wave-grad)"
          strokeWidth="1.2" strokeOpacity={l.opacity} />
      ))}
    </svg>
  )
}

// ── Facets: overlapping translucent rounded panels ───────────────────────────
const FACETS = [
  { x: -120, y: 120, s: 620, rot: -12, o: 0.22 },
  { x: 420, y: -90, s: 560, rot: 8, o: 0.15 },
  { x: 820, y: 250, s: 660, rot: -6, o: 0.20 },
  { x: 250, y: 430, s: 540, rot: 14, o: 0.13 },
  { x: 1000, y: -60, s: 500, rot: 18, o: 0.12 },
]

function Facets() {
  return (
    <svg className="bg-svg" viewBox="0 0 1440 900" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs>
        <linearGradient id="bg-facet-grad" x1="0" y1="0" x2="1" y2="1">
          <stop offset="0" stopColor="#7c3aed" />
          <stop offset="1" stopColor="#3b1d6e" />
        </linearGradient>
      </defs>
      {FACETS.map((r, i) => (
        <rect key={i} x={r.x} y={r.y} width={r.s} height={r.s} rx="96"
          transform={`rotate(${r.rot} ${r.x + r.s / 2} ${r.y + r.s / 2})`}
          fill="url(#bg-facet-grad)" fillOpacity={r.o} />
      ))}
    </svg>
  )
}

// ── Flux: a flowing river of network nodes (dots along drifting sine rows) ────
const FLUX = (() => {
  const nodes = [], lines = []
  const rows = [
    { y: 330, amp: 62, ph: 0 },
    { y: 440, amp: 82, ph: 1.3 },
    { y: 545, amp: 70, ph: 2.5 },
  ]
  const per = 16
  rows.forEach((row, ri) => {
    const start = ri * per
    for (let i = 0; i < per; i++) {
      const x = (i / (per - 1)) * 1540 - 50
      const y = row.y + row.amp * Math.sin((i / (per - 1)) * Math.PI * 2.3 + row.ph)
      nodes.push({ x, y, accent: i % 5 === 0 })
      if (i > 0) lines.push([start + i - 1, start + i])
    }
  })
  for (let i = 0; i < per; i += 2) {
    lines.push([i, per + i])
    lines.push([per + i, per * 2 + i])
  }
  return { nodes, lines }
})()

function Flux() {
  return (
    <svg className="bg-svg" viewBox="0 0 1440 900" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <g className="bg-plexus-lines">
        {FLUX.lines.map(([a, b], i) => (
          <line key={i} x1={FLUX.nodes[a].x} y1={FLUX.nodes[a].y} x2={FLUX.nodes[b].x} y2={FLUX.nodes[b].y} />
        ))}
      </g>
      <g className="bg-plexus-nodes">
        {FLUX.nodes.map((n, i) => (
          <circle key={i} cx={n.x} cy={n.y} r={n.accent ? 4.5 : 2.2} className={n.accent ? 'is-accent' : ''} />
        ))}
      </g>
    </svg>
  )
}

// ── Fluid: soft gradient blobs with a few drifting geometric outlines ─────────
function Fluid() {
  return (
    <svg className="bg-svg" viewBox="0 0 1440 900" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <g stroke="currentColor" strokeWidth="1.4" fill="none" strokeOpacity="0.5">
        <polygon points="180,150 240,150 210,98" />
        <circle cx="1180" cy="180" r="26" />
        <polygon points="720,300 752,324 740,362 700,362 688,324" />
        <circle cx="300" cy="640" r="20" />
        <line x1="980" y1="560" x2="1120" y2="480" />
        <line x1="430" y1="760" x2="560" y2="690" />
        <line x1="1200" y1="700" x2="1320" y2="640" />
      </g>
    </svg>
  )
}

// ── Prism: faceted wireframe clusters in opposite corners ─────────────────────
function facetCluster(cx, cy, r, n = 7) {
  const outer = [], inner = []
  for (let i = 0; i < n; i++) {
    const a = (i / n) * Math.PI * 2
    outer.push([cx + Math.cos(a) * r, cy + Math.sin(a) * r])
    const b = ((i + 0.5) / n) * Math.PI * 2
    inner.push([cx + Math.cos(b) * r * 0.52, cy + Math.sin(b) * r * 0.52])
  }
  const lines = []
  for (let i = 0; i < n; i++) {
    lines.push([outer[i], outer[(i + 1) % n]])
    lines.push([outer[i], inner[i]])
    lines.push([inner[i], outer[(i + 1) % n]])
    lines.push([inner[i], [cx, cy]])
  }
  return lines
}

function Prism() {
  const lines = [...facetCluster(1230, 120, 230), ...facetCluster(160, 760, 250)]
  return (
    <svg className="bg-svg" viewBox="0 0 1440 900" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs>
        <linearGradient id="bg-prism-grad" x1="0" y1="0" x2="1" y2="1">
          <stop offset="0" stopColor="#c9a9ff" />
          <stop offset="0.5" stopColor="#ffffff" />
          <stop offset="1" stopColor="#a9c9ff" />
        </linearGradient>
      </defs>
      <g stroke="url(#bg-prism-grad)" strokeWidth="1" fill="none">
        {lines.map((l, i) => (
          <line key={i} x1={l[0][0]} y1={l[0][1]} x2={l[1][0]} y2={l[1][1]} />
        ))}
      </g>
    </svg>
  )
}

// Themes whose artwork is a plexus network (differ only by colour/base via CSS).
const PLEXUS_THEMES = ['plexus', 'sky', 'bloom']

/**
 * Fixed decorative background for the app shell. The pattern is chosen in
 * Settings and stored per-appearance. It sits behind all content (opaque cards
 * keep text readable) and is absent on the distraction-free exam pages, which
 * render outside the shell.
 */
export function BackgroundLayer() {
  const { background } = useTheme()
  return (
    <div className="app-bg" data-bg={background} aria-hidden="true">
      {PLEXUS_THEMES.includes(background) && <Plexus />}
      {background === 'flux' && <Flux />}
      {background === 'fluid' && <Fluid />}
      {background === 'waves' && <Waves />}
      {background === 'facets' && <Facets />}
      {background === 'prism' && <Prism />}
    </div>
  )
}
