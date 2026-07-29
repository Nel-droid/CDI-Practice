import { useCallback, useEffect, useState } from 'react'
import { supabase } from './supabase'

/**
 * The band a candidate is aiming for.
 *
 * Persisted to `profiles.target_band` when that column exists, and always
 * mirrored to localStorage so the feature works immediately — before the
 * migration in `supabase/phase10-target-band.sql` has been run, and offline.
 * A missing column is an expected state here, not an error worth surfacing.
 */

const KEY = 'cdi-target-band'

function readLocal() {
  try {
    const raw = localStorage.getItem(KEY)
    if (!raw) return null
    const n = Number(raw)
    return Number.isFinite(n) ? n : null
  } catch {
    return null
  }
}

function writeLocal(band) {
  try {
    if (band == null) localStorage.removeItem(KEY)
    else localStorage.setItem(KEY, String(band))
  } catch {
    /* private mode — the profile write is still attempted */
  }
}

export function useTargetBand(user) {
  // Seed from localStorage so the instrument renders without waiting on the network.
  const [target, setTarget] = useState(readLocal)

  useEffect(() => {
    if (!user) return
    let cancelled = false

    supabase
      .from('profiles')
      .select('target_band')
      .eq('id', user.id)
      .single()
      .then(({ data, error }) => {
        if (cancelled || error || data?.target_band == null) return
        setTarget(data.target_band)
        writeLocal(data.target_band)
      })

    return () => { cancelled = true }
  }, [user])

  const save = useCallback(async (band) => {
    setTarget(band)
    writeLocal(band)
    if (!user) return

    const { error } = await supabase
      .from('profiles')
      .update({ target_band: band })
      .eq('id', user.id)

    // The column may not exist yet; localStorage already holds the value.
    if (error) console.warn('target_band not persisted to profile:', error.message)
  }, [user])

  return [target, save]
}
