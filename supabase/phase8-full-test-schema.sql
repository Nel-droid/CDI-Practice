-- ─────────────────────────────────────────────────────────────────────────────
-- Phase 8 — Full Test module schema
-- Run once in the Supabase SQL Editor (tab: phase8-full-test-schema)
-- Prerequisites: phase6-writing-schema.sql must already be applied.
-- ─────────────────────────────────────────────────────────────────────────────

-- ── 1. full_tests — the 20 curated exam pairs ─────────────────────────────────
--
-- Each row is one predefined full test:
--   · task1_prompt_id  → a 'task1' row in writing_prompts (has chart_path)
--   · task2_prompt_id  → a 'task2' row in writing_prompts (has essay type in chart_type)
--
-- Seeded by: phase8-full-test-seed.sql (one INSERT per test after uploading images)

CREATE TABLE IF NOT EXISTS public.full_tests (
  id               uuid    DEFAULT gen_random_uuid() PRIMARY KEY,
  test_number      integer NOT NULL UNIQUE CHECK (test_number BETWEEN 1 AND 99),
  title            text    NOT NULL,
  task1_prompt_id  uuid    REFERENCES public.writing_prompts(id) ON DELETE SET NULL,
  task2_prompt_id  uuid    REFERENCES public.writing_prompts(id) ON DELETE SET NULL,
  time_limit_min   integer NOT NULL DEFAULT 60,
  published        boolean NOT NULL DEFAULT false,
  created_at       timestamptz DEFAULT now()
);

ALTER TABLE public.full_tests ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE policyname = 'Authenticated users can read published full tests'
      AND tablename  = 'full_tests'
  ) THEN
    CREATE POLICY "Authenticated users can read published full tests"
      ON public.full_tests FOR SELECT
      TO authenticated
      USING (
        published = true
        OR current_setting('request.jwt.claims', true)::jsonb->>'role' = 'service_role'
      );
  END IF;
END $$;

GRANT SELECT ON public.full_tests TO authenticated;

-- ── 2. full_test_sessions — per-student attempt records ───────────────────────
--
-- One row per sitting. Links the curated test (full_test_id) to the student's
-- individual essay attempts (task1_attempt_id / task2_attempt_id).
--
-- 'in_progress' → student started but has not submitted
-- 'completed'   → both tasks submitted; the session is locked

CREATE TABLE IF NOT EXISTS public.full_test_sessions (
  id               uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id          uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  full_test_id     uuid REFERENCES public.full_tests(id)         ON DELETE SET NULL,
  task1_prompt_id  uuid REFERENCES public.writing_prompts(id)    ON DELETE SET NULL,
  task2_prompt_id  uuid REFERENCES public.writing_prompts(id)    ON DELETE SET NULL,
  task1_attempt_id uuid REFERENCES public.writing_attempts(id)   ON DELETE SET NULL,
  task2_attempt_id uuid REFERENCES public.writing_attempts(id)   ON DELETE SET NULL,
  status           text NOT NULL DEFAULT 'in_progress',
  duration_seconds integer NOT NULL DEFAULT 0,
  created_at       timestamptz DEFAULT now()
);

-- If the table already existed from the initial Phase 8 draft, patch it forward:
ALTER TABLE public.full_test_sessions
  ADD COLUMN IF NOT EXISTS full_test_id uuid REFERENCES public.full_tests(id) ON DELETE SET NULL;

ALTER TABLE public.full_test_sessions
  ADD COLUMN IF NOT EXISTS status text NOT NULL DEFAULT 'in_progress';

-- Add status check constraint once (idempotent guard)
DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.table_constraints
    WHERE table_name      = 'full_test_sessions'
      AND constraint_name = 'full_test_sessions_status_check'
  ) THEN
    ALTER TABLE public.full_test_sessions
      ADD CONSTRAINT full_test_sessions_status_check
      CHECK (status IN ('in_progress', 'completed'));
  END IF;
END $$;

ALTER TABLE public.full_test_sessions ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE policyname = 'Users manage own full test sessions'
      AND tablename  = 'full_test_sessions'
  ) THEN
    CREATE POLICY "Users manage own full test sessions"
      ON public.full_test_sessions FOR ALL
      USING  (auth.uid() = user_id)
      WITH CHECK (auth.uid() = user_id);
  END IF;
END $$;

GRANT ALL ON public.full_test_sessions TO authenticated;

-- ── 3. Storage — image path convention ───────────────────────────────────────
--
-- Bucket : writing-charts   (created in phase6-writing-schema.sql — reused here)
-- Folder : full-tests/
-- Files  : test-01-task1.png  …  test-20-task1.png
--
-- chart_path in writing_prompts: 'full-tests/test-01-task1.png'
--
-- The existing authenticated-read RLS policy on writing-charts already covers
-- this subfolder — no additional storage SQL is needed.

-- ── 4. Verify ─────────────────────────────────────────────────────────────────

SELECT
  'full_tests'          AS table_name,
  COUNT(*)              AS rows
FROM public.full_tests
UNION ALL
SELECT
  'full_test_sessions',
  COUNT(*)
FROM public.full_test_sessions;
