import './Avatar.css'

/**
 * A candidate's avatar — their initials on a chosen colour. No image upload or
 * storage bucket needed; the colour lives in the user's profile metadata, and
 * white initials stay legible on every colour in the set.
 */

export const AVATAR_COLORS = [
  '#1E4FA1', // signal blue
  '#0E7C66', // teal
  '#2C6E49', // green
  '#C4870B', // gold
  '#B4531F', // rust
  '#B03052', // rose
  '#7A3E9D', // violet
  '#3B5578', // slate
]

export const DEFAULT_AVATAR_COLOR = AVATAR_COLORS[0]

/** Up to two initials from a name, falling back to an email local-part. */
export function initialsOf(nameOrEmail) {
  const s = (nameOrEmail ?? '').trim()
  if (!s) return '?'
  const local = s.includes('@') ? s.split('@')[0] : s
  const parts = local.split(/[\s._-]+/).filter(Boolean)
  if (parts.length === 0) return '?'
  if (parts.length === 1) return parts[0].slice(0, 2).toUpperCase()
  return (parts[0][0] + parts[parts.length - 1][0]).toUpperCase()
}

export function Avatar({ name, color = DEFAULT_AVATAR_COLOR, imageUrl = null, size = 36, className = '' }) {
  // A photo when the candidate has uploaded one; their initials otherwise.
  if (imageUrl) {
    return (
      <img
        className={`avatar avatar--img ${className}`}
        src={imageUrl}
        alt=""
        width={size}
        height={size}
        style={{ width: size, height: size }}
      />
    )
  }
  return (
    <span
      className={`avatar ${className}`}
      style={{
        width: size,
        height: size,
        background: color,
        fontSize: size * 0.4,
      }}
      aria-hidden="true"
    >
      {initialsOf(name)}
    </span>
  )
}
