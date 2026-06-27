# CDI IELTS Mock Platform — Build Spec

A spec for a coding agent (e.g. Claude Code in VS Code) to build a public,
account-based IELTS mock-test web app. Build in the **phases** below, in order.
Do not jump ahead; finish and verify each phase before starting the next.

---

## 1. Product summary

A public website where a student signs up / logs in and practises **Reading**,
**Listening**, and **Writing** IELTS mock tests under exam-like conditions, then
sees auto-marked results with detailed explanations. (Speaking is out of scope
for now; design so it can be added later.)

Design priority: **usable by someone who has never used a web app.** Big clear
buttons, obvious next step on every screen, plain-language labels, no jargon.

---

## 2. Tech stack (use exactly this)

- **Frontend:** React 18 + Vite. Plain CSS or CSS modules (no Tailwind required).
- **Routing:** react-router-dom.
- **Backend-as-a-service:** Supabase — Auth, Postgres, Storage, Edge Functions.
- **PDF generation:** `jspdf` + `html2canvas` (client-side).
- **Charts (placeholder generation only):** simple SVG or a light chart lib.
- **Hosting:** Vercel, connected to the GitHub repo (auto-deploy on push).
- **Secrets:** all keys in environment variables. Never commit real keys.
  Commit a `.env.example` with placeholder values only.

The Supabase **anon key** is safe in the frontend; the **service-role key** is
used only in Edge Functions / scheduled jobs, never shipped to the browser.

---

## 3. Content model (critical)

The app is **content-driven**: the engine knows nothing about any specific test.
Test content lives in the database (and Storage), not hardcoded. Ship with
**generic, original placeholder content** so the app runs end-to-end before any
real material is loaded. Do NOT invent or paste real Cambridge content — the
client loads licensed content themselves through an admin path later.

### Reading / Listening — JSON shape (stored per test)

```jsonc
{
  "skill": "reading",              // "reading" | "listening"
  "book": "Cambridge 18",
  "testLabel": "Test 1",
  "variant": "academic",            // affects band table
  "durationSeconds": 3600,          // 3600 reading, 1800 listening
  "sections": [
    {
      "id": "p1",
      "title": "Passage 1",
      "audioPath": "audio/c18-t1-s1.mp3",   // listening only
      "passage": [ { "ref": "A", "text": "..." } ],  // reading only
      "groups": [
        {
          "type": "multiple_choice",  // see types below
          "instructions": "...",
          "options": [ { "key": "i", "text": "..." } ],  // for matching
          "questions": [
            {
              "number": 1,
              "prompt": "...",
              "options": [ { "key": "A", "text": "..." } ],
              "answer": "B",                 // or ["steel","iron"] or ["A","C"]
              "wordLimit": 2,                // for completion/short_answer
              "explanation": "Why the key is correct, in plain language.",
              "evidence": { "sectionId": "p1", "ref": "C", "quote": "..." }
            }
          ]
        }
      ]
    }
  ]
}
```

**Supported question types:** `multiple_choice`, `multiple_choice_multi`,
`true_false_notgiven`, `yes_no_notgiven`, `matching`, `completion`,
`short_answer`. (T/F/NG and Y/N/NG are button choices, never free text.)

For **Listening**, each section also carries a `transcript` array of
`{ id, speaker, text, evidenceForQuestions: [numbers] }` used by the feedback
view to show and highlight the script.

### Writing — JSON shape

```jsonc
{
  "taskType": "task1",     // "task1" | "task2" | "full"
  "chartType": "bar",      // task1/full only: line|bar|pie|table|map|process|mixed
  "chartPath": "charts/c-line-01.png", // image in Storage (task1/full)
  "prompt": "...",
  "minWords": 150
}
```

---

## 4. Database schema (Supabase / Postgres)

Enable **Row Level Security on every table.**

- `profiles` — `id` (FK auth.users), `display_name`, `created_at`,
  `last_active_at`. RLS: a user reads/updates only their own row.
- `tests` — `id`, `skill`, `book`, `test_label`, `variant`,
  `duration_seconds`, `content` (jsonb = the Reading/Listening shape above),
  `published` (bool), `created_at`. RLS: any authenticated user can `select`
  where `published = true`; only `admin` role can insert/update.
- `writing_prompts` — `id`, `task_type`, `chart_type`, `chart_path`,
  `prompt`, `min_words`, `order`, `published`. Same RLS as `tests`.
- `attempts` — `id`, `user_id`, `test_id`, `skill`, `started_at`,
  `submitted_at`, `duration_seconds`, `raw_score`, `band`,
  `responses` (jsonb), `marked` (jsonb: per-question correct/given/answer).
  RLS: a user reads/writes only rows where `user_id = auth.uid()`.
- `writing_attempts` — `id`, `user_id`, `prompt_id`, `task_type`, `essay`,
  `word_count`, `duration_seconds`, `created_at`. RLS: own rows only.

Files (audio, chart images) live in Supabase **Storage** buckets, served via
signed URLs to authenticated users.

---

## 5. Marking engine — correctness rules (the "no bugs" part)

This is the highest-risk area. Implement as a pure, unit-tested function
`isCorrect(question, response)` and satisfy every case below with tests.

1. **Normalize** both sides: trim, lowercase, collapse internal whitespace.
2. **Accepted variants:** the answer key is an array of accepted strings; a
   response matches if it equals any one of them after normalization. Author
   lists spelling variants explicitly (e.g. `["colour","color"]`). Do NOT
   auto-correct spelling.
3. **Word limit:** if `wordLimit` is set, a response with more words than the
   limit is **wrong**, even if it contains the right word. Count words, reject.
4. **Numbers:** accept `"12"` and `"twelve"` only if both are in the key.
5. **Multi-select (`multiple_choice_multi`):** order-independent set equality.
   `["A","C"]` must equal a response of `["C","A"]`. Wrong if count differs.
6. **Paired answers** (e.g. Q6–Q7 "choose TWO"): either correct letter counts
   for either of the two question slots; don't double-count one letter.
7. **Choice types** (mcq, T/F/NG, Y/N/NG, matching): exact key match after
   normalization. These are selected via buttons/dropdowns, so no typos.
8. **Hyphen/space:** treat `"well-known"` and `"well known"` as equal (strip
   hyphens in normalization) — confirm this matches the client's marking policy.

**Banding:** raw 0–40 → band via lookup tables for Listening, Academic Reading,
and General Reading (store tables in one config file; they are indicative and
the client will replace them with the official conversion). Overall = mean of
available module bands, rounded to nearest half-band (.25→.5, .75→next whole).

Provide a Jest/Vitest test file covering all 8 rules with at least 2 cases each.

---

## 6. Screens & flows

### Auth
- Landing page → "Sign up" / "Log in". Supabase email + Google.
- After login, land on a **Dashboard**.

### Dashboard
- Three big cards: Reading, Listening, Writing.
- "Your recent results" list (from `attempts` / `writing_attempts`), with a
  score trend. Empty state: a friendly "Take your first test" prompt.
- "Resume" any unfinished attempt.

### Reading
- Pick **book** (Cambridge 9 → latest) → pick **Test 1–4** → start.
- Test screen: top bar with **countdown timer**; split-screen (passage left,
  questions right); numbered **question palette** at the bottom; flag button per
  question; section nav (Part 1/2/3). Submit (or auto-submit at 0:00).
- Result: score, band, and a per-question review (correct vs incorrect).
- **Feedback view:** for each question, the explanation and the highlighted
  **evidence span** in the passage; show synonyms/paraphrase notes.

### Listening
- Same pick flow. On start, **audio plays once, straight through** (no pause/
  rewind during the test); the student can freely switch sections while it plays.
- Submit → score.
- **Feedback view:** transcript shown beside the questions, audio fully
  controllable, the supporting sentence in the transcript **highlighted** per
  question, with synonym/paraphrase explanation linking transcript → question.

### Writing
Three sub-sections: **Task 1**, **Task 2**, **Full Test**.

- **Task 1 (standalone):** pick from 10 charts per type (line/bar/pie/table/map/
  process/mixed). Screen: chart on the **left**, essay editor on the **right**,
  **word count** at the bottom. Chart tools: **zoom in/out**, **fullscreen**,
  and **annotate** (draw lines/highlights on an overlay). **Count-up** timer
  showing time spent. On submit → show time spent + word count → **download
  PDF** containing the chart (with annotations baked in) + essay + time + words.
- **Task 2 (standalone):** pick 1 of 10 topics → topic shown on top, editor
  below, word count at bottom, count-up timer. Submit → PDF (topic + essay +
  time + words).
- **Full Test:** 10 dedicated tests, each with its own Task 1 chart + Task 2
  topic (distinct from the standalone pools). **60-minute countdown**, switch
  between Task 1 and Task 2 tabs, **auto-submit at 0:00** (or submit early).
  Download a single PDF with both tasks, their charts/topics, time, and counts.

PDF rule: composite the chart image + annotation overlay into one raster
(html2canvas) before embedding, so drawn annotations appear in the file.

### Account / data
- Sign out. Optional "delete my account."
- **Retention job:** a scheduled Supabase Edge Function (daily) that finds
  profiles with `last_active_at` older than 30 days and **deletes their
  `attempts` and `writing_attempts`** (keeps the account). Update
  `last_active_at` on every login and submission.

---

## 7. Accessibility & "anyone can use it"
- Keyboard focus visible everywhere; respects reduced-motion.
- Target **desktop/tablet** for the split-screen and side-by-side writing
  layouts. On phones, degrade gracefully (stacked) and warn that a larger
  screen is recommended for full tests.
- A 60-second sample/tutorial question before a student's first real test.

---

## 8. Phased build order (do in sequence, verify each)

1. **Scaffold + deploy pipeline.** Vite React app, routing, `.env.example`,
   push to GitHub, connect Vercel, confirm a blank deploy works.
2. **Supabase + auth.** Project, tables, RLS, email + Google login, Dashboard
   shell with empty states.
3. **Marking engine + tests.** Pure `isCorrect` + band tables + full Vitest
   suite green (Section 5). This lands before any test UI.
4. **Reading module** end-to-end with placeholder content: pick flow, timer,
   split-screen, palette, submit, score, feedback/evidence highlight.
5. **Listening module:** audio-once playback, section switching, feedback with
   transcript highlight.
6. **Writing — Task 1:** chart zoom/fullscreen/annotate, count-up timer, PDF.
7. **Writing — Task 2 + Full Test:** topic editor, 60-min countdown auto-submit,
   combined PDF.
8. **Retention job** (30-day purge) + account screen + recent-results trend.
9. **Polish:** tutorial, mobile fallback, accessibility pass, error states.

(AI-assisted Writing feedback is explicitly **deferred** — leave a clean
extension point, do not build it yet.)

---

## 9. Acceptance checklist (must all pass before "done")
- [ ] All 8 marking rules covered by passing unit tests.
- [ ] A full Reading test can be taken, submitted, scored, and reviewed with
      correct/incorrect marks and explanations.
- [ ] Listening audio plays once; sections switchable; transcript highlights in
      feedback.
- [ ] Writing PDFs include chart + annotations + essay + time + word count.
- [ ] Full Test auto-submits at 0:00.
- [ ] A logged-out user cannot read another user's attempts (RLS verified).
- [ ] No secret keys in the repo; `.env.example` present.
- [ ] Inactive-30-day purge function runs and clears attempts only.
- [ ] App is navigable by keyboard; works on a tablet-width screen.

---

## 10. Kickoff prompt (paste this to the agent)

> You are building the CDI IELTS Mock Platform described in
> `CDI-IELTS-BUILD-SPEC.md` in this repo. Read that file fully first. Build it in
> the phases listed in Section 8, one at a time. After each phase: run the build,
> run any tests, and give me a short summary of what to verify before you
> continue. Use the exact tech stack in Section 2. Store all secrets in env vars
> and commit only `.env.example`. Use only original placeholder content — never
> invent or paste real Cambridge test material. Start with **Phase 1** now: set
> up the Vite + React app, routing, and the deploy-ready structure, and tell me
> exactly what I need to do on GitHub and Vercel to see it live. Stop after
> Phase 1 and wait for me to confirm before Phase 2.
