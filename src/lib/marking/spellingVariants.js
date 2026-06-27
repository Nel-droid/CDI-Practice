/**
 * British <-> American spelling pairs.
 *
 * Both directions are listed so the lookup works regardless of which form
 * appears in the answer key.
 *
 * These are KNOWN, documented equivalents only — never arbitrary misspellings.
 * Used exclusively when a question has acceptSpellingVariants: true.
 *
 * To add a new pair: insert both directions as two entries.
 * Keys and values must already be lowercase (they are matched against
 * normalised strings).
 */
export const SPELLING_VARIANTS = {
  // -our / -or
  colour: 'color',       color: 'colour',
  favour: 'favor',       favor: 'favour',
  honour: 'honor',       honor: 'honour',
  labour: 'labor',       labor: 'labour',
  neighbour: 'neighbor', neighbor: 'neighbour',
  behaviour: 'behavior', behavior: 'behaviour',
  harbour: 'harbor',     harbor: 'harbour',
  humour: 'humor',       humor: 'humour',
  rumour: 'rumor',       rumor: 'rumour',
  vapour: 'vapor',       vapor: 'vapour',

  // -ise / -ize  (and -yse / -yze)
  organise: 'organize',     organize: 'organise',
  recognise: 'recognize',   recognize: 'recognise',
  analyse: 'analyze',       analyze: 'analyse',
  realise: 'realize',       realize: 'realise',
  specialise: 'specialize', specialize: 'specialise',
  emphasise: 'emphasize',   emphasize: 'emphasise',
  criticise: 'criticize',   criticize: 'criticise',

  // -re / -er
  centre: 'center',   center: 'centre',
  metre: 'meter',     meter: 'metre',
  litre: 'liter',     liter: 'litre',
  fibre: 'fiber',     fiber: 'fibre',
  theatre: 'theater', theater: 'theatre',
  calibre: 'caliber', caliber: 'calibre',

  // -mme / -m
  programme: 'program', program: 'programme',

  // doubled consonant
  traveller: 'traveler',   traveler: 'traveller',
  counsellor: 'counselor', counselor: 'counsellor',
  modelling: 'modeling',   modeling: 'modelling',
  fulfil: 'fulfill',       fulfill: 'fulfil',
  enrol: 'enroll',         enroll: 'enrol',

  // miscellaneous
  grey: 'gray',               gray: 'grey',
  defence: 'defense',         defense: 'defence',
  offence: 'offense',         offense: 'offence',
  licence: 'license',         license: 'licence',
  judgement: 'judgment',      judgment: 'judgement',
  acknowledgement: 'acknowledgment', acknowledgment: 'acknowledgement',
  maths: 'math',              math: 'maths',
  aluminium: 'aluminum',      aluminum: 'aluminium',
}

/**
 * Swap every word in a normalised string that has a known GB/US variant.
 * Returns the same string if no words match.
 *
 * @param {string} normalised - already lowercased, whitespace-collapsed string
 * @returns {string}
 */
function swapVariantWords(normalised) {
  return normalised
    .split(' ')
    .map(word => SPELLING_VARIANTS[word] ?? word)
    .join(' ')
}

/**
 * Given an array of already-normalised answer strings, return a new array
 * that also includes the GB/US spelling-swapped form of each entry
 * (deduplicated).
 *
 * Only swaps KNOWN pairs — no arbitrary transformations.
 *
 * @param {string[]} normalisedAnswers
 * @returns {string[]}
 */
export function expandVariants(normalisedAnswers) {
  const result = new Set(normalisedAnswers)
  for (const ans of normalisedAnswers) {
    const alt = swapVariantWords(ans)
    if (alt !== ans) result.add(alt)
  }
  return [...result]
}
