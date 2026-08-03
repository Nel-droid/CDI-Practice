import { useState, useEffect, useCallback } from 'react'
import { getJsonAuthed } from './apiFetch'

/**
 * The signed-in user's tier + AI quota usage (from GET /api/usage).
 * Shape: { tier, tutor:{used,limit,period}, writing:{used,limit,period}, currentPeriodEnd }
 */
export function useUsage() {
  const [usage, setUsage] = useState(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')

  const refresh = useCallback(async () => {
    setLoading(true)
    setError('')
    try {
      setUsage(await getJsonAuthed('/api/usage'))
    } catch (e) {
      setError(e.message)
    } finally {
      setLoading(false)
    }
  }, [])

  useEffect(() => { refresh() }, [refresh])

  return { usage, loading, error, refresh }
}
