import './Skeleton.css'

/**
 * Content-shaped loading placeholders.
 *
 * A shimmer in the shape of what's coming reads as "loading this specific
 * thing", where a centred "Loading…" reads as "the app is stuck". Respects
 * reduced-motion (the shimmer becomes a static tint).
 */
export function Skeleton({ w = '100%', h = '1rem', radius = '6px', className = '' }) {
  return (
    <span
      className={`skel ${className}`}
      style={{ width: w, height: h, borderRadius: radius }}
      aria-hidden="true"
    />
  )
}

/** A titled card block of skeleton lines — the common panel-loading shape. */
export function SkeletonPanel({ lines = 3, title = true }) {
  return (
    <div className="skel-panel" aria-hidden="true">
      {title && <Skeleton w="40%" h="1.1rem" className="skel-mb-lg" />}
      {Array.from({ length: lines }).map((_, i) => (
        <Skeleton key={i} w={`${90 - i * 12}%`} h="0.8rem" className="skel-mb" />
      ))}
    </div>
  )
}
