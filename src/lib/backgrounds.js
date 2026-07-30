// Registry of decorative background themes. Each is tagged with the appearance
// (light / dark) it's designed for; "both" shows in either. The Settings picker
// filters by the current appearance, and each appearance remembers its own pick.

export const BACKGROUND_THEMES = [
  { id: 'none', name: 'Clean', mode: 'both' },

  // ── Dark-mode backdrops ──
  { id: 'plexus', name: 'Plexus', mode: 'dark' },
  { id: 'flux', name: 'Flux', mode: 'dark' },
  { id: 'deepsea', name: 'Deep Sea', mode: 'dark' },
  { id: 'waves', name: 'Waves', mode: 'dark' },
  { id: 'fluid', name: 'Fluid', mode: 'dark' },
  { id: 'facets', name: 'Facets', mode: 'dark' },

  // ── Light-mode backdrops ──
  { id: 'prism', name: 'Prism', mode: 'light' },
  { id: 'sky', name: 'Sky', mode: 'light' },
  { id: 'bloom', name: 'Bloom', mode: 'light' },
  { id: 'flare', name: 'Flare', mode: 'light' },
  { id: 'drift', name: 'Drift', mode: 'light' },
]

export const DEFAULT_BG = 'none'

/** The themes offered for a given resolved appearance ('light' | 'dark'). */
export function backgroundsForTheme(theme) {
  return BACKGROUND_THEMES.filter(t => t.mode === 'both' || t.mode === theme)
}

/** Is this background id valid to show in the given appearance? */
export function isValidBackground(id, theme) {
  const t = BACKGROUND_THEMES.find(x => x.id === id)
  return Boolean(t) && (t.mode === 'both' || t.mode === theme)
}
