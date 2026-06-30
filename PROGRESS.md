# CDI Practice — Build Progress

> Companion to `CDI-IELTS-BUILD-SPEC.md`. This file is the "where things stand right now"
> snapshot. To resume in a new chat, paste **both** this file and the build spec.
> Last updated: after Phase 5 Checkpoint 2 (locked listening audio player) pushed & verified.

---

## What this project is
A public, account-based IELTS-style mock-test web app (Reading, Listening, Writing;
Speaking deferred). Claude builds the **content-agnostic engine** only — all test content
is original/company-owned placeholder material loaded by the team, never reproduced
Cambridge/IELTS passages.

## Identifiers / locations
- GitHub repo (PRIVATE): `github.com/Nel-droid/cdi-ielts`
- Live site: `https://cdi-ielts-two.vercel.app`
- Vercel team: `nel-droid` (Hobby/free plan — non-commercial)
- Supabase project ref: `rwjtsbewnptrxspetguu` — `https://rwjtsbewnptrxspetguu.supabase.co`
- Local project: `C:\Users\Surface\Desktop\IELTS Project`
- Company CDI source material (listening audio source): `C:\WORK\IELTS\IELTS Mock`
  (user's OWN company CDI material, cleared for internal test use — keep repo private
  until manager signs off on public release)
- Reading Test 1 row id: `9b9a0196-de4d-4759-a412-0167e4737336`
  (`test_label = 'Test 1' AND skill = 'reading'`)
- Listening Test 1 row id: `cae3d5c9-de1b-4073-8320-2b2c228274ce`
  (`test_label = 'Test 1' AND skill = 'listening'`)

## Accounts (two exist — this matters, see owner-drafts below)
- `eldornabijonov.2005@gmail.com` → uid `4497ec02-bee7-4392-aa3f-586696f78723`
  **← owns the listening draft; log into the site as THIS account to see drafts in dev**
- `nabijonoveldor.2803@gmail.com` → uid `bfce2703-1e53-490c-aee5-ef1d8e2d0b89`

## Tech stack (locked)
React 18 + Vite, react-router-dom, plain CSS. Supabase (auth + Postgres + Storage + RLS).
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
  types, submit + auto-submit, marking via scoreModule, save attempt, results page.
  **In-passage review** (passage left, per-question list right; merge-cluster highlight
  renderer stacks multiple question numbers on one sentence e.g. `[5][10]`; clicking an
  `[N]` box or the right-panel ⓘ opens a popover with question / your answer / correct
  answer / explanation / evidence / paraphraseNote; popover auto-flips up + caps height).
  Reading Test 1 is a full **40-question** test. **148 Vitest tests, all green.**
- **Phase 5 — Listening** 🔄 **IN PROGRESS.**
  - Checkpoint 1 ✅ storage bucket + seed (see below).
  - **Checkpoint 2 ✅ DONE & PUSHED** (`330c089..e044249` on `main`) — locked audio
    player, dev-only owner-readable drafts, full exam→results flow.
  - Checkpoint 3 ⬜ NEXT — transcript review (needs transcript content filled first).
- **Phase 5.5 — Student highlighting** ⬜ PLANNED. Let students highlight words/
  sentences/questions WHILE taking a test (real CDI feature). Build ONCE as a shared
  capability for BOTH Reading and Listening, AFTER Listening. Distinct from the system
  review-highlighting already built.
- **Phase 6 — Writing Task 1** ⬜ Chart zoom/fullscreen/annotate + PDF export.
- **Phase 7 — Writing Task 2 + Full Test** ⬜ 60-min countdown auto-submit, combined PDF.
- **Phase 8 — Retention job** ⬜ 30-day purge of attempts (keep account) — confirm scope.
- **Phase 9 — Polish** ⬜

---

## Phase 5 Listening — detail

### Architecture
Same as Reading; reuses marking engine, results/dashboard/save, and the merge-cluster
review renderer. Built phase-by-phase with stop-and-verify checkpoints.

### Checkpoint 1 — storage + seed ✅
- Private bucket `listening-audio` + SELECT policy "Authenticated users can stream
  listening audio" for `authenticated`. (Bucket INSERT uses `ON CONFLICT DO NOTHING`;
  `CREATE POLICY` is NOT idempotent — don't re-run it.)
- 4 MP3s uploaded to bucket ROOT as `Part 1.mp3`, `Part 2.mp3`, `Part 3.mp3`,
  `Part 4.mp3` (capital P, space). Seed `audioPath` values match the filenames exactly.
- Listening Test 1 seeded via `supabase/phase5-seed.sql` (`$json$...$json$::jsonb`,
  `published:false`). Verified: 1 row, skill=listening, published=false, total_slots=40
  (Part1=10, Part2=4+6, Part3=5+5, Part4=10). The 40 answers are REAL, so submitting
  produces a real score. Content shape: listening section has `audioPath` + `transcript[]`
  (entries with id/speaker/text/evidenceForQuestions) instead of Reading's `passage[]`;
  `evidence.ref` = transcript entry id.

### Checkpoint 2 — locked audio player ✅ DONE & PUSHED
Files: `src/App.jsx` (new `/listening/exam/:testId` + `/listening/results/:attemptId`
routes), `src/pages/listening/` — `ListeningHome`, `ListeningExam`, `ListeningResults`
(JSX + CSS). 148/148 Vitest green (UI-only change, no engine touch).

**Play-once lock enforcement (how it can't be bypassed):**
- No `controls` attribute → no seek bar / play-pause / volume; element is out of the Tab
  focus order, so keyboard (Space, arrows) can't reach it.
- `disableRemotePlayback` → no AirPlay/Cast transport controls.
- `onSeeking` handler + `furthestRef` (highest `currentTime` reached, updated on
  `timeupdate`): if currentTime drops >2s behind furthest (only possible via a
  programmatic `audio.currentTime = 0` in devtools), it snaps back. **Verified working:
  console `currentTime = 0` snaps back, does not rewind.**
- **Accepted gaps (by design):** OS media-key pause (resumes same spot, no rewind);
  forward-seek not blocked (skipping ahead only hurts the student). **Client-side only —
  the signed URL can be pulled from the network tab and replayed; fine for a PRACTICE
  platform, NOT exam-grade security. Do not market the lock as exam-grade.**
- Filename spaces: handled by `createSignedUrl(path, seconds)` — path goes in the request
  BODY, server percent-encodes it (`Part%201.mp3`). No manual `encodeURIComponent` needed.

**Dev-only draft preview (so we never publish a broken test to test it):**
`ListeningHome` query skips the `.eq('published', true)` filter when `import.meta.env.DEV`
is true; production keeps the filter. A DRAFT badge shows on unpublished rows in dev only
(dead-code-eliminated in the prod build).

### Checkpoint 3 — transcript review ⬜ NEXT
Reuse in-passage review but source from TRANSCRIPT (transcript left, merge-cluster
highlights, `[N]`/ⓘ popovers); audio **replayable with normal controls in review only**.
Extend `validateTest.js` published-contract to listening (40 slots + fields + audio
present). **Needs the transcript content gaps (below) filled first.**

### Known content gaps in listening seed (all TODO; `published` stays false until filled)
- Transcript text for all 4 parts (transcript PDF `Listening Test.pdf` is a scanned image,
  no text layer; MP3s would need speech-to-text). Options: team's editable transcript,
  OCR, or team supplies text.
- All `evidence.quote` / `evidence.ref` / `explanation` fields.
- Q11–14 map location prompts (Part 2 map is an embedded image).
- Stale comment in `phase5-seed.sql` header still references `test1/part1.mp3` though
  actual `audioPath` values are correctly `Part 1.mp3` — harmless, tidy later.
- `ListeningHome` empty-state text: ask the agent to confirm it no longer says
  "set published = true" (that advice is now wrong under owner-drafts).

---

## Key engine decisions (don't re-derive these)

- **Choose-two questions** scored via `scorePaired` as **paired two-slot items worth 2
  marks** (one mark per correct distinct letter, order-independent, no duplicate scores
  twice) — matches real IELTS "Choose TWO" = two answer boxes. Author as
  `type: "choose_two", paired: true` with two slots — NOT `multiple_choice_multi`
  (all-or-nothing). Results join choose-two with "and"; short-answer alternatives keep "/".
- **Band scores only show on a true 40-question test.** `scoreModule` returns `band: null`
  when `total !== 40`; UI hides the band block. `validateTest.js` warns on a published test
  if total != 40 OR any question missing answer/evidence.quote/explanation.
- **Spelling variants are opt-in per question** (`acceptSpellingVariants`), never global.
- **Evidence quotes must be contiguous verbatim substrings — no "..." ellipsis** (ellipsis
  broke the highlight match for Q16/Q35/Q36; fixed). Omit `paraphraseNote` when the only
  difference is capitalisation (no actual paraphrase).
- **Content vs code discipline:** fix the ENGINE when a flaw is structural; fix the CONTENT
  when the flaw is the data.

## Supabase gotchas (each cost a debugging session — remember them)

**1. Raw-SQL tables don't inherit base GRANTs.** Tables created via raw SQL (e.g. `tests`)
do NOT get the automatic GRANTs that dashboard-created tables get. RLS can be perfect and
reads/writes still 403 "permission denied for table X". Fix:
```sql
GRANT SELECT ON public.tests TO authenticated;
GRANT SELECT, UPDATE ON public.profiles TO authenticated;
GRANT SELECT, INSERT, UPDATE ON public.attempts TO authenticated;
```
Any new raw-SQL table in later phases needs its own grants.

**2. Owner-readable drafts (Phase 5).** RLS SELECT policy on `tests` is now:
```sql
USING (published = true OR created_by = auth.uid())
```
(migration `phase5-owner-readable-drafts`: added `created_by uuid default auth.uid()`,
replaced the old `USING (published = true)` policy, claimed existing listening row).
- Published tests → visible to everyone (unchanged prod behaviour).
- Unpublished draft → visible ONLY to the user whose uid = `created_by`.
- **`published` IS a security boundary — do NOT replace the policy with `USING (true)`**
  (that would expose every unpublished test's questions + answers to any logged-in user
  via the API). The dev-gate in the app is NOT a security control; RLS is.

**3. Raw-SQL seeds set `created_by = NULL`.** `DEFAULT auth.uid()` only fires for inserts
made through the authenticated API. Seeds run as `postgres` in the SQL editor → `auth.uid()`
is NULL → every new raw-SQL-seeded draft comes in unowned and is invisible to everyone.
**After each new seed, claim the row** (or set `created_by` explicitly in the INSERT):
```sql
UPDATE public.tests SET created_by = '<your-uid>' WHERE id = '<row-id>';
```
Claim by `id`, never by a broad attribute filter.

**4. To see a draft in dev you must be logged into the SITE as the owning account.**
The listening draft is owned by `.2005`. Logging into the site as `.2803` correctly shows
"No tests available yet" — that's RLS working, not a bug.

---

## SQL Editor named queries (source of truth is the repo `supabase/*.sql` files)
Editor tabs are disposable history. Do NOT re-run old queries — especially
`phase4-rls-fix` (its `UPDATE ... SET published=true` would wrongly publish the
half-finished listening test). Named tabs, in build order:
`phase2-auth-schema`, `phase4-tests-table-and-reading-seed`, `phase4-rls-fix`,
`phase4-base-grants`, `phase4-choose-two-restructure`,
`phase4-paraphrase-notes-SUPERSEDED` (old Q35-note version — safe to delete, don't re-run),
`phase4-final-40q-and-quote-fixes`, `phase5-listening-bucket`,
`phase5-listening-audio-policy`, `phase5-listening-seed`, `phase5-owner-readable-drafts`,
`scratch-checks` (throwaway SELECTs — deletable).

---

## Current content status
Live content is **original/company placeholder material** (Reading: urban agriculture,
ocean-floor mapping, history of glass; Listening: company CDI sample). Fine for testing the
engine; must be confirmed/swapped for cleared content before any public launch.

## Open decisions — need manager (parked, not blocking the build)
1. **Content-authoring/admin tool** — hand-writing ~3,500 questions (+ audio) as raw SQL
   isn't viable. The real bottleneck before launch. Next planning item.
2. **"Only authorized system" marketing wording** — verify; likely inaccurate (IELTS is
   jointly owned by British Council, IDP, Cambridge; computer-delivered IELTS already
   exists; mid-2026 is the *paper* phase-out, not a CDI launch).
3. **30-day data-deletion rule** — interpreted as keep account, purge attempts. Confirm
   whether whole-account deletion is intended.
4. **AI-assisted Writing feedback** — **DEFERRED by decision.** Do NOT build until the user
   has discussed AI assistance with their manager. (This is why all explanations /
   paraphrase notes are AUTHORED, never AI-generated.)
5. **Vercel Hobby is non-commercial** — commercial launch needs Pro, ideally a
   company-owned account.

## Methodology
Build phase-by-phase: one phase, build, **stop, verify on placeholder content**, then
proceed. Never "write the whole app in one prompt." Keep repo PRIVATE until manager signs
off on what's public. The VS Code agent retains codebase context but CANNOT see the
Supabase session — ignore its false "still need to run the SQL" notes once a verify has
confirmed success. All SQL: agent shows it → Claude checks it → user runs it.

## Immediate next step
Phase 5 Checkpoint 3 (transcript review) — but it's blocked on the transcript content gaps
above. Likely better to either (a) fill the listening transcript/evidence content first, or
(b) jump to planning the content-authoring tool (open decision #1), since hand-seeding is
the real bottleneck. Decide with the user which to tackle next.
