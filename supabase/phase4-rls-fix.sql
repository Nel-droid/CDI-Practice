-- ============================================================
-- Phase 4 RLS fix — run once in the Supabase SQL Editor
-- Resolves: 403 on GET public.tests, 403 on PATCH public.profiles
-- ============================================================

-- ── 1. tests: drop & recreate SELECT policy ─────────────────
--    The original seed used a DO-block IF NOT EXISTS that silently
--    skipped policy creation when schemaname was not included in
--    the pg_policies lookup.

DROP POLICY IF EXISTS "Authenticated users can read published tests"
  ON public.tests;

CREATE POLICY "Authenticated users can read published tests"
  ON public.tests FOR SELECT
  TO authenticated
  USING (published = true);

-- Make sure the seeded row is visible
UPDATE public.tests
   SET published = true
 WHERE published = false;

-- Verify: should return at least one row (your placeholder test)
SELECT id, book, test_label, published
  FROM public.tests
 ORDER BY created_at;


-- ── 2. profiles: drop & recreate UPDATE policy ───────────────
--    The Phase 2 policy had USING but was missing WITH CHECK.
--    PostgreSQL technically defaults WITH CHECK to the USING
--    expression, but some Supabase PostgREST versions enforce
--    an explicit WITH CHECK before allowing UPDATE via the API.

DROP POLICY IF EXISTS "Users can update own profile"
  ON public.profiles;

CREATE POLICY "Users can update own profile"
  ON public.profiles FOR UPDATE
  TO authenticated
  USING     (auth.uid() = id)
  WITH CHECK (auth.uid() = id);


-- ── 3. Diagnostic: confirm all policies on both tables ───────
SELECT schemaname, tablename, policyname, cmd, qual, with_check
  FROM pg_policies
 WHERE tablename IN ('tests', 'profiles')
 ORDER BY tablename, policyname;
