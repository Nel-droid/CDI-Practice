export function Logo({ size = 36, className = '' }) {
  /*
   * C-with-bars mark — drawn as a thick stroked arc so it reads as the letter C.
   * ViewBox 44×44. Arc centered at (22,22), radius 16, opening ±40° on the right.
   * Three ascending bars (blue·green·gold) sit inside the counter space.
   *
   * Opening terminals:
   *   top    → (22 + 16·cos40°, 22 − 16·sin40°) ≈ (34, 12)
   *   bottom → (34, 32)
   *
   * C arc: M 34,12 A 16,16 0 1,0 34,32  (CCW large arc — traces the C left side)
   * stroke-width 9 → inner edge at r≈11.5 from centre, outer at r≈20.5
   */
  return (
    <svg
      width={size}
      height={size}
      viewBox="0 0 44 44"
      className={'logo-mark' + (className ? ' ' + className : '')}
      aria-hidden="true"
      focusable="false"
    >
      {/* C shape — thick stroked arc; colour via CSS .lm-c stroke */}
      <path
        className="lm-c"
        fill="none"
        strokeWidth="9"
        strokeLinecap="butt"
        d="M 34,12 A 16,16 0 1,0 34,32"
      />
      {/* Ascending bars inside C counter (all bottom-aligned at y=33) */}
      <rect className="lm-r" x="11" y="25" width="7" height="8"  rx="1" />
      <rect className="lm-l" x="19" y="18" width="7" height="15" rx="1" />
      <rect className="lm-w" x="27" y="11" width="7" height="22" rx="1" />
    </svg>
  )
}
