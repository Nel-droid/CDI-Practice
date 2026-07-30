-- ═══════════════════════════════════════════════════════════════════════════
-- Phase 15 — harden get_review_content + clean up a stray test attempt.
--
-- NOTE ON THE "review is broken" REPORT: the function itself was NOT the cause.
-- It is already SECURITY DEFINER and re-checks ownership + submitted state. The
-- real cause was that re-seeding Reading/Listening content with DELETE+INSERT
-- minted new tests.id values, orphaning older attempts (their test_id points to
-- a row that no longer exists), so the JOIN correctly finds nothing and returns
-- null. Fresh attempts on the current tests review fine. This migration only
-- adds standard search-path hardening; the app now degrades gracefully for any
-- attempt whose test row is gone.
-- ═══════════════════════════════════════════════════════════════════════════

create or replace function public.get_review_content(p_attempt_id uuid)
returns jsonb
language plpgsql
security definer
set search_path = public, pg_temp          -- harden against search-path hijacking
as $$
declare
  result jsonb;
begin
  -- Even as SECURITY DEFINER, authorise explicitly: the attempt must belong to
  -- the caller AND be submitted before any answer-bearing content is returned.
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

  return result; -- null when not yours, not submitted, or the test no longer exists
end;
$$;

grant execute on function public.get_review_content(uuid) to authenticated;

-- ── Cleanup: remove the throwaway (unsubmitted) test attempt ────────────────
-- The `authenticated` role has no DELETE grant on attempts by design, so this is
-- done here as an admin. Only this one row.
delete from public.attempts
where id = '3bf525fb-581e-48c5-8842-2458c22c6e09';
