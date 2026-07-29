-- ─────────────────────────────────────────────────────────────────────────────
-- Phase 6 — Writing module schema
-- Run once in the Supabase SQL Editor (tab name: phase6-writing-schema)
-- ─────────────────────────────────────────────────────────────────────────────

-- ── 1. writing_prompts ────────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS public.writing_prompts (
  id             uuid         DEFAULT gen_random_uuid() PRIMARY KEY,
  task_type      text         NOT NULL CHECK (task_type IN ('task1', 'task2', 'full')),
  chart_type     text         CHECK (chart_type IN ('bar','line','pie','table','map','process','mixed')),
  chart_path     text,                     -- path inside writing-charts Storage bucket
  title          text         NOT NULL,
  prompt         text         NOT NULL,
  min_words      integer      NOT NULL DEFAULT 150,
  display_order  integer      DEFAULT 0,
  published      boolean      NOT NULL DEFAULT false,
  created_at     timestamptz  DEFAULT now()
);

ALTER TABLE public.writing_prompts ENABLE ROW LEVEL SECURITY;

-- Everyone who is authenticated can see published prompts.
-- Owner (created_by pattern not needed here — content is managed by admin SQL only)
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'writing_prompts'
      AND policyname = 'Authenticated users can read published prompts'
  ) THEN
    CREATE POLICY "Authenticated users can read published prompts"
      ON public.writing_prompts FOR SELECT
      TO authenticated
      USING (published = true OR current_setting('request.jwt.claims', true)::jsonb->>'role' = 'service_role');
  END IF;
END $$;

-- Dev: allow all authenticated reads (so unpublished prompts are testable)
-- Production note: toggle published = true to release a prompt to students.

GRANT SELECT ON public.writing_prompts TO authenticated;

-- ── 2. writing_attempts ───────────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS public.writing_attempts (
  id               uuid         DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id          uuid         NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  prompt_id        uuid         REFERENCES public.writing_prompts(id),
  task_type        text         NOT NULL CHECK (task_type IN ('task1', 'task2', 'full')),
  essay            text         NOT NULL DEFAULT '',
  word_count       integer      NOT NULL DEFAULT 0,
  duration_seconds integer      NOT NULL DEFAULT 0,
  created_at       timestamptz  DEFAULT now()
);

ALTER TABLE public.writing_attempts ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'writing_attempts'
      AND policyname = 'Users manage own writing attempts'
  ) THEN
    CREATE POLICY "Users manage own writing attempts"
      ON public.writing_attempts FOR ALL
      TO authenticated
      USING (user_id = auth.uid())
      WITH CHECK (user_id = auth.uid());
  END IF;
END $$;

GRANT SELECT, INSERT ON public.writing_attempts TO authenticated;

-- ── 3. Storage bucket for chart images ───────────────────────────────────────
-- Create the bucket via the Supabase dashboard (Storage → New bucket →
-- name: "writing-charts", public: OFF) OR via the insert below.

INSERT INTO storage.buckets (id, name, public)
VALUES ('writing-charts', 'writing-charts', false)
ON CONFLICT (id) DO NOTHING;

-- RLS on storage.objects for writing-charts
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'objects'
      AND schemaname = 'storage'
      AND policyname = 'Authenticated users can view writing charts'
  ) THEN
    CREATE POLICY "Authenticated users can view writing charts"
      ON storage.objects FOR SELECT
      TO authenticated
      USING (bucket_id = 'writing-charts');
  END IF;
END $$;

-- ── 4. Seed: one Task 1 sample prompt ────────────────────────────────────────
-- Upload a chart image to the writing-charts bucket as "task1-sample.png"
-- before testing. The UI shows a "no image" placeholder if the file is missing.

INSERT INTO public.writing_prompts
  (task_type, chart_type, chart_path, title, prompt, min_words, display_order, published)
VALUES
  (
    'task1',
    'bar',
    'task1-sample.png',
    'Museum Visitor Numbers',
    'The bar chart below shows the number of visitors to three museums in a major European city in 2010, 2015, and 2020. Summarise the information by selecting and reporting the main features, and make comparisons where relevant. Write at least 150 words.',
    150,
    1,
    true
  )
ON CONFLICT DO NOTHING;

-- ── 5. Verify ────────────────────────────────────────────────────────────────
SELECT
  id,
  task_type,
  chart_type,
  title,
  min_words,
  published
FROM public.writing_prompts
ORDER BY display_order;
