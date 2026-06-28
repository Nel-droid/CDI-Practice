# CDI Practice — Build Progress

> Companion to `CDI-IELTS-BUILD-SPEC.md`. This file is the "where things stand right now"
> snapshot. To resume in a new chat, paste **both** this file and the build spec.
> Last updated: after Phase 4 (Reading) completed and verified live.

---

## What this project is
A public, account-based IELTS-style mock-test web app (Reading, Listening, Writing;
Speaking deferred). Claude builds the **content-agnostic engine** only — all test content
is original placeholder material loaded by the team, never reproduced Cambridge passages.

## Identifiers / locations
- GitHub repo (PRIVATE): `github.com/Nel-droid/cdi-ielts`
- Live site: `https://cdi-ielts-two.vercel.app`
- Vercel team: `nel-droid` (Hobby/free plan — non-commercial)
- Supabase project ref: `rwjtsbewnptrxspetguu` — `https://rwjtsbewnptrxspetguu.supabase.co`
- Local project: `C:\Users\Surface\Desktop\IELTS Project`
- Test 1 row id: `9b9a0196-de4d-4759-a412-0167e4737336`
  (identified by `test_label = 'Test 1' AND skill = 'reading'`)

## Tech stack (locked)
React 18 + Vite, react-router-dom, plain CSS. Supabase (auth + Postgres + storage + RLS).
Auto-deploy to Vercel on push to `main`. Marking engine + Vitest. PDF (jspdf + html2canvas)
in later phases. Only `VITE_SUPABASE_URL` + `VITE_SUPABASE_ANON_KEY` go to the frontend;
the service/secret key stays local-only.

---

## Phase status

- **Phase 1 — Scaffold** ✅ Vite+React, routing, app shell, deployed.
- **Phase 2 — Auth + DB** ✅ Email signup/login, route guards, RLS on `profiles`,
  `attempts`, `writing_attempts`. Email confirmation OFF for dev. URL config set.
- **Phase 3 — Marking engine** ✅ Vitest suite. Normalise, isCorrect, band tables,
  bandScore, scoreModule. Opt-in spelling variants (per-question flag, never global).
  Paired scoring (`scorePaired`) for choose-two.
- **Phase 4 — Reading module** ✅ **COMPLETE, verified live.**
  Split-screen, 60:00 timer, section nav, question palette, flagging, all question
  types, submit + auto-submit, marking via scoreModule, save attempt, results page,
  dashboard recent-results.
  **Review model:** in-passage view with inline [N] highlight boxes. The
  merge-cluster renderer (`mergeHighlightSpans`) handles multiple questions on the
  same passage sentence by stacking their [N] boxes (e.g. `[5][10]`) inside one
  `<mark>` — mixed-correctness spans show green and red boxes side by side on an
  amber highlight. A per-question list column has ⓘ-button popovers showing
  Question / Your answer / Correct answer / Explanation / Evidence / Paraphrase
  (when `paraphraseNote` is present). All content is authored (explanation,
  evidence.quote, optional paraphraseNote) — no AI generation.
  **Test 1 is now a full 40-question test** (Q39 and Q40 added in Phase 4
  close-out). **148 Vitest tests, all green.**
- **Phase 5 — Listening** ⬜ NEXT. Audio-plays-once constraint; transcript-highlight
  feedback. Same shape as Reading.
- **Phase 6 — Writing Task 1** ⬜ Chart zoom/fullscreen/annotate + PDF export.
- **Phase 7 — Writing Task 2 + Full Test** ⬜ 60-min countdown auto-submit, combined PDF.
- **Phase 8 — Retention job** ⬜ 30-day purge of attempts (keep account) — confirm scope.
- **Phase 9 — Polish** ⬜

---

## Key engine decisions (don't re-derive these)

- **Choose-two questions** are scored via `scorePaired` as **paired two-slot items
  worth 2 marks** (one mark per correct distinct letter, order-independent, no duplicate
  letter can score twice). This matches real IELTS, where "Choose TWO" fills two answer
  boxes. **Author future choose-two questions as `type: "choose_two", paired: true` with
  two slots** — NOT as `multiple_choice_multi` (which is all-or-nothing via
  `scoreMultiSelect`). Results display joins these with "and"; short-answer alternatives
  keep "/".
- **Band scores only show on a true 40-question test.** `scoreModule` returns
  `band: null` when `total !== 40`; the results UI hides the band block. Test 1
  is now 40 questions and shows band scores correctly.
- **`validateTest.js` warns on test load** for any published test that fails either:
  (a) total slots ≠ 40, or (b) any question is missing `answer`, `evidence.quote`,
  or `explanation`. All warnings fire via `console.warn` at test-load time, labelled
  `[CDI]`. This is the durable guard against blank explanations shipping.
- **Spelling variants are opt-in per question** (`acceptSpellingVariants` flag), never
  applied globally.

## Supabase gotcha (cost a long debugging session — remember it)
Tables created via **raw SQL** (e.g. the seed-created `tests` table) do **NOT** inherit
the automatic base GRANTs that Supabase **dashboard-created** tables get. RLS policies can
be perfectly correct and reads/writes still 403 with "permission denied for table X".
Fix is base grants, e.g.:
```sql
GRANT SELECT ON public.tests TO authenticated;
GRANT SELECT, UPDATE ON public.profiles TO authenticated;
GRANT SELECT, INSERT, UPDATE ON public.attempts TO authenticated;
```
**Any new table created by raw SQL in later phases will need its own grants too.**

---

## Current content status
Live content is **original placeholder material** (urban agriculture, ocean-floor mapping,
history of glass). Fine for testing the engine; must be swapped for real content before
any launch.

## Open decisions — need manager (parked, not blocking the build)
1. **Content-authoring/admin tool** — hand-writing ~3,500 questions as raw SQL isn't
   viable. This is the real bottleneck before launch. Next planning item.
2. **"Only authorized system" marketing wording** — verify; likely inaccurate (IELTS is
   jointly owned by British Council, IDP, Cambridge; computer-delivered IELTS already
   exists; mid-2026 is the *paper* phase-out, not a CDI launch).
3. **30-day data-deletion rule** — interpreted as keep account, purge attempts. Confirm
   whether whole-account deletion is intended.
4. **AI-assisted Writing feedback** — **DEFERRED by decision.** Do NOT build until the
   user has discussed AI assistance with their manager. Revisit only after that.
5. **Vercel Hobby is non-commercial** — commercial launch needs Pro, ideally a
   company-owned account.

## Methodology
Build phase-by-phase: one phase, build, **stop, verify on placeholder content**, then
proceed. Never "write the whole app in one prompt." Keep repo PRIVATE until manager signs
off on what's public.
