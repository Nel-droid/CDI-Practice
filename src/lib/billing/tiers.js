// Display metadata for the pricing page. The server (api/_lib/entitlements.js)
// is the source of truth for the *enforced* numbers; these mirror them for copy.
export const TIERS = [
  {
    id: 'free',
    name: 'Free',
    price: 0,
    accent: 'var(--color-primary)',
    ghost: 'F',
    tagline: 'Everything you need to practise, on the house.',
    features: [
      { text: 'All Reading, Listening & Writing tests', strong: true },
      { text: 'Instant band scores + full evidence review', strong: true },
      { text: '10 AI Tutor messages a day' },
      { text: '7 AI writing checks total' },
    ],
  },
  {
    id: 'silver',
    name: 'Silver',
    price: 3.99,
    accent: '#64748B',
    ghost: 'S',
    tagline: '5× more AI help for steady, consistent prep.',
    features: [
      { text: 'Everything in Free', strong: true },
      { text: '50 AI Tutor messages a day' },
      { text: '3 AI writing checks a day' },
    ],
  },
  {
    id: 'gold',
    name: 'Gold',
    price: 7.99,
    accent: 'var(--color-gold)',
    ghost: 'G',
    popular: true,
    tagline: 'The most AI support, for serious daily preparation.',
    features: [
      { text: 'Everything in Free', strong: true },
      { text: '200 AI Tutor messages a day' },
      { text: '10 AI writing checks a day' },
    ],
  },
]

export const TIER_RANK = { free: 0, silver: 1, gold: 2 }
