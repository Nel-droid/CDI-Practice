-- Phase 10 — target band
--
-- Optional. The app already works without this: the target is mirrored to
-- localStorage, so running this migration simply makes a candidate's target
-- follow them across devices.
--
-- Run in the Supabase SQL editor.

ALTER TABLE public.profiles
  ADD COLUMN IF NOT EXISTS target_band numeric(2,1)
  CHECK (target_band IS NULL OR (target_band >= 0 AND target_band <= 9));

COMMENT ON COLUMN public.profiles.target_band IS
  'The IELTS band this candidate is aiming for, in half bands (0.0–9.0).';
