import { HttpError } from './http.js'

// Per-tier quotas. `writingLifetime` (free) is a one-time allowance that never
// resets; `writingPerDay` (paid) resets daily; tutor is always per day.
export const TIER_LIMITS = {
  free:   { tutorPerDay: 10,  writingPerDay: null, writingLifetime: 7 },
  silver: { tutorPerDay: 50,  writingPerDay: 3,    writingLifetime: null },
  gold:   { tutorPerDay: 200, writingPerDay: 10,   writingLifetime: null },
}

const today = () => new Date().toISOString().slice(0, 10)

// Load (or lazily create) the user's entitlement row.
async function getEntitlement(supa, userId) {
  const { data } = await supa.from('entitlements').select('*').eq('user_id', userId).maybeSingle()
  if (data) return data
  const { data: created } = await supa
    .from('entitlements')
    .upsert({ user_id: userId }, { onConflict: 'user_id' })
    .select('*')
    .maybeSingle()
  return created ?? { user_id: userId, tier: 'free', free_writing_used: 0 }
}

// The tier we actually grant. If a paid period has lapsed we fall back to free —
// a safety net in case the billing webhook hasn't downgraded the row yet.
function effectiveTier(ent) {
  const tier = ent?.tier ?? 'free'
  if (tier === 'free') return 'free'
  if (ent.current_period_end && new Date(ent.current_period_end) < new Date()) return 'free'
  return tier
}

async function usedToday(supa, userId, feature) {
  const { data } = await supa
    .from('ai_usage')
    .select('count')
    .eq('user_id', userId)
    .eq('day', today())
    .eq('feature', feature)
    .maybeSingle()
  return data?.count ?? 0
}

function overQuota(feature, lifetime) {
  const what = feature === 'tutor' ? 'AI tutor messages' : 'writing checks'
  const msg = lifetime
    ? `You've used all your free ${what}.`
    : `You've used all your ${what} for today. They reset tomorrow.`
  const err = new HttpError(msg, 402) // 402 Payment Required
  err.code = 'quota_exceeded'
  err.feature = feature
  return err
}

/**
 * Throw HttpError(402) if the user is already at their quota for `feature`
 * ('tutor' | 'writing'). Does NOT consume — call recordUsage after a successful
 * AI response. Fails OPEN on storage errors so a counter glitch never blocks.
 */
export async function assertQuota(supa, userId, feature) {
  try {
    const ent = await getEntitlement(supa, userId)
    const limits = TIER_LIMITS[effectiveTier(ent)] ?? TIER_LIMITS.free

    if (feature === 'tutor') {
      if ((await usedToday(supa, userId, 'tutor')) >= limits.tutorPerDay) throw overQuota('tutor')
      return
    }
    if (feature === 'writing') {
      if (limits.writingLifetime != null) {
        if ((ent.free_writing_used ?? 0) >= limits.writingLifetime) throw overQuota('writing', true)
      } else if ((await usedToday(supa, userId, 'writing')) >= limits.writingPerDay) {
        throw overQuota('writing')
      }
      return
    }
    throw new HttpError('Unknown feature.', 400)
  } catch (err) {
    if (err instanceof HttpError) throw err
    // storage/transient error → fail open
  }
}

/** Record one successful use of `feature`. Fails silently on storage errors. */
export async function recordUsage(supa, userId, feature) {
  try {
    const ent = await getEntitlement(supa, userId)
    const limits = TIER_LIMITS[effectiveTier(ent)] ?? TIER_LIMITS.free

    if (feature === 'writing' && limits.writingLifetime != null) {
      await supa
        .from('entitlements')
        .update({ free_writing_used: (ent.free_writing_used ?? 0) + 1, updated_at: new Date().toISOString() })
        .eq('user_id', userId)
      return
    }
    const used = await usedToday(supa, userId, feature)
    await supa
      .from('ai_usage')
      .upsert({ user_id: userId, day: today(), feature, count: used + 1 }, { onConflict: 'user_id,day,feature' })
  } catch {
    // fail open — never break a successful response over a counter write
  }
}

/** Tier + remaining-quota summary for the UI (see api/usage.js). */
export async function getUsageSummary(supa, userId) {
  const ent = await getEntitlement(supa, userId)
  const tier = effectiveTier(ent)
  const limits = TIER_LIMITS[tier]

  const writing = limits.writingLifetime != null
    ? { period: 'lifetime', used: ent.free_writing_used ?? 0, limit: limits.writingLifetime }
    : { period: 'day', used: await usedToday(supa, userId, 'writing'), limit: limits.writingPerDay }

  return {
    tier,
    tutor: { period: 'day', used: await usedToday(supa, userId, 'tutor'), limit: limits.tutorPerDay },
    writing,
    currentPeriodEnd: ent.current_period_end ?? null,
  }
}
