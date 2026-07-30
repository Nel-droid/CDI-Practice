-- ═══════════════════════════════════════════════════════════════════════════
-- Phase 13 — stop serving the answer key to exam-takers
--
-- The `tests.content` jsonb holds questions AND their answers/explanations in
-- one object, and the table was readable by the `authenticated` role, so any
-- logged-in user could read the whole answer key before submitting.
--
-- This migration is NON-DESTRUCTIVE: `content` is left exactly as-is (it stays
-- the source of truth used for server-side grading and post-submission review).
-- We stop the CLIENT from reading raw `content` and instead expose:
--   • tests_public          — a view with answers stripped, for listing + exams
--   • get_review_content()   — full content, but only for your own SUBMITTED attempt
-- Grading moves server-side (api/grade.js, service-role) so answers never reach
-- the browser before submission.
--
-- Safe to run once in the Supabase SQL editor.
-- ═══════════════════════════════════════════════════════════════════════════

-- ── 1. Strip answer-bearing fields from a content object ────────────────────
-- Removes, per question: answer, explanation, evidence, paraphraseNote.
-- Also drops any `transcript` (listening) which reveals the recording text.
-- Keeps everything an exam-taker legitimately needs: passages, prompts,
-- options, formContent, mapImage, audioPath, section structure, etc.
create or replace function public.strip_answers(c jsonb)
returns jsonb
language sql
immutable
as $$
  select jsonb_set(
    c - 'transcript',
    '{sections}',
    coalesce((
      select jsonb_agg(
        jsonb_set(
          sec - 'transcript',
          '{groups}',
          coalesce((
            select jsonb_agg(
              jsonb_set(
                grp,
                '{questions}',
                coalesce((
                  select jsonb_agg(
                    q - 'answer' - 'explanation' - 'evidence' - 'paraphraseNote'
                  )
                  from jsonb_array_elements(grp->'questions') q
                ), '[]'::jsonb)
              )
            )
            from jsonb_array_elements(sec->'groups') grp
          ), '[]'::jsonb)
        )
      )
      from jsonb_array_elements(c->'sections') sec
    ), '[]'::jsonb)
  )
$$;

-- ── 2. Public, answer-free view for listing tests and taking exams ──────────
-- Runs with the view owner's rights (security definer semantics) but re-applies
-- the same visibility rule as the base RLS policy: published tests for everyone,
-- plus the owner's own drafts (dev preview).
create or replace view public.tests_public as
select
  t.id,
  t.skill,
  t.book,
  t.test_label,
  t.variant,
  t.duration_seconds,
  t.published,
  public.strip_answers(t.content) as content
from public.tests t
where t.published = true or t.created_by = auth.uid();

-- ── 3. Lock down the raw table; expose only the safe surfaces ───────────────
revoke select on public.tests from anon, authenticated;
grant  select on public.tests_public to authenticated;

-- The server-side grader (api/grade.js) runs as service_role. These raw-SQL
-- tables were never granted to service_role, so grant exactly what it needs:
-- read the full test to mark it, and record the result on the attempt.
grant select on public.tests to service_role;
grant select, update on public.attempts to service_role;

-- ── 4. Full content for review — ONLY your own, ONLY after submitting ───────
create or replace function public.get_review_content(p_attempt_id uuid)
returns jsonb
language plpgsql
security definer
set search_path = public
as $$
declare
  result jsonb;
begin
  select jsonb_build_object(
           'content',    t.content,
           'book',       t.book,
           'test_label', t.test_label
         )
    into result
  from public.attempts a
  join public.tests t on t.id = a.test_id
  where a.id = p_attempt_id
    and a.user_id = auth.uid()
    and a.submitted_at is not null;

  return result; -- null when the attempt isn't yours or isn't submitted yet
end;
$$;

grant execute on function public.get_review_content(uuid) to authenticated;

-- ── 5. Simple per-user daily usage counter (soft cap for AI + grading) ──────
create table if not exists public.api_usage (
  user_id uuid not null,
  day     date not null default current_date,
  count   integer not null default 0,
  primary key (user_id, day)
);

alter table public.api_usage enable row level security;
-- No policies: only the service role (which bypasses RLS) touches this table.
grant all on public.api_usage to service_role;
