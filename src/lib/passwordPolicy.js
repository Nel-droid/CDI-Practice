/**
 * Password strength policy — shared by the sign-up form and the
 * change-password control so both enforce exactly the same rules.
 *
 * A strong password must:
 *   1. be at least 8 characters long
 *   2. contain an uppercase letter
 *   3. contain a number
 *   4. contain a symbol (anything that isn't a letter or digit)
 *   5. not resemble the person's email address or display name
 */

export const MIN_PASSWORD_LENGTH = 8

// Below this we don't treat a name/email fragment as meaningful enough to
// block on — otherwise a two-letter nickname would forbid half of all passwords.
const MIN_SIMILARITY_TOKEN = 3

/** Does `password` look too much like `token` (either contains the other)? */
function resembles(password, token) {
  if (!token || token.length < MIN_SIMILARITY_TOKEN) return false
  const p = password.toLowerCase()
  const t = token.toLowerCase()
  return p.includes(t) || t.includes(p)
}

/**
 * Evaluate a password against the policy.
 *
 * @param {string} password
 * @param {{ email?: string, name?: string }} [identity] used for the
 *        "not similar to email/username" rule.
 * @returns {{ checks: Array<{id, label, passed}>, valid: boolean }}
 */
export function evaluatePassword(password = '', identity = {}) {
  const { email = '', name = '' } = identity
  const emailLocal = email.split('@')[0] || ''

  // Compare against the whole email, its local part, each word inside the
  // local part (so "nabijonov" from "eldornabijonov.2005" counts), and the
  // display name.
  const identityTokens = [
    email,
    emailLocal,
    ...emailLocal.split(/[^a-zA-Z]+/),
    name,
  ].filter(Boolean)

  const notLikeIdentity =
    password.length > 0 && !identityTokens.some(token => resembles(password, token))

  const checks = [
    { id: 'length', label: `At least ${MIN_PASSWORD_LENGTH} characters`, passed: password.length >= MIN_PASSWORD_LENGTH },
    { id: 'upper', label: 'One uppercase letter', passed: /[A-Z]/.test(password) },
    { id: 'number', label: 'One number', passed: /[0-9]/.test(password) },
    { id: 'symbol', label: 'One symbol', passed: /[^A-Za-z0-9]/.test(password) },
    { id: 'distinct', label: 'Not similar to your email or name', passed: notLikeIdentity },
  ]

  return { checks, valid: checks.every(c => c.passed) }
}

/**
 * First failing requirement as a user-facing sentence, or null if the
 * password satisfies the policy. Handy for a single inline error message.
 */
export function firstPasswordProblem(password, identity) {
  const { checks } = evaluatePassword(password, identity)
  const failed = checks.find(c => !c.passed)
  if (!failed) return null
  if (failed.id === 'distinct') {
    return 'Your password must not be similar to your username or email address.'
  }
  return `Your password needs: ${failed.label.toLowerCase()}.`
}
