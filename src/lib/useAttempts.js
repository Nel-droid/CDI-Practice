import { useEffect, useState } from 'react'
import { supabase } from './supabase'

/**
 * A candidate's Reading + Listening attempts, newest first.
 *
 * Shared by the dashboard and the coach so both read the same rows the same
 * way. `marked` carries the per-question and per-type breakdown recorded at
 * submit time.
 */
export function useAttempts(user, limit = 60) {
  const [attempts, setAttempts] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    if (!user) { setLoading(false); return }
    let cancelled = false
    setLoading(true)

    supabase
      .from('attempts')
      .select('id, skill, submitted_at, band, raw_score, duration_seconds, marked')
      .eq('user_id', user.id)
      .order('submitted_at', { ascending: false })
      .limit(limit)
      .then(({ data }) => {
        if (cancelled) return
        setAttempts(data ?? [])
        setLoading(false)
      })

    return () => { cancelled = true }
  }, [user, limit])

  return { attempts, loading }
}
