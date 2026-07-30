import { useEffect, useState } from 'react'
import { supabase } from './supabase'

/**
 * A candidate's history for one skill, keyed by test id.
 *
 * Lets a test list say which papers have already been sat, what the best band
 * was, and whether an attempt was left unfinished — so nobody has to remember
 * which of twenty-four Cambridge papers they have already done.
 *
 * @param {object|null} user
 * @param {string} skill - 'reading' | 'listening'
 * @returns {{history: Record<string, {count: number, best: number|null, lastAt: string|null, inProgress: string|null}>, loading: boolean}}
 */
export function useTestHistory(user, skill) {
  const [history, setHistory] = useState({})
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    if (!user) { setLoading(false); return }
    let cancelled = false

    supabase
      .from('attempts')
      .select('id, test_id, band, submitted_at, started_at')
      .eq('user_id', user.id)
      .eq('skill', skill)
      .order('started_at', { ascending: false })
      .then(({ data, error }) => {
        if (cancelled) return
        if (error || !data) { setLoading(false); return }

        const map = {}
        for (const a of data) {
          if (!a.test_id) continue
          const row = map[a.test_id] ??= { count: 0, best: null, lastAt: null, inProgress: null }

          if (a.submitted_at) {
            row.count += 1
            if (a.band != null && (row.best == null || a.band > row.best)) row.best = a.band
            if (!row.lastAt || a.submitted_at > row.lastAt) row.lastAt = a.submitted_at
          } else if (!row.inProgress) {
            // Most recent unfinished attempt — offer to resume rather than restart.
            row.inProgress = a.id
          }
        }
        setHistory(map)
        setLoading(false)
      })

    return () => { cancelled = true }
  }, [user, skill])

  return { history, loading }
}
