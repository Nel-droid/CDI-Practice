-- ============================================================================
-- Phase 16 — Subscription tiers + AI usage metering
--
-- Adds:
--   * public.entitlements  — a user's plan (free/silver/gold) + subscription
--     state + lifetime free-writing counter. READ-ONLY to the owner; only the
--     service role may write it (so a user can never self-upgrade to gold).
--   * public.ai_usage      — per-user, per-day, per-feature request counts,
--     used to enforce the daily quotas. Service role only.
--
-- Quotas (enforced in api/_lib/entitlements.js):
--                Tutor / day    Writing checks
--   free            10          7 total (lifetime)
--   silver          50          3 / day
--   gold           200         10 / day
--
-- Run once in the Supabase SQL editor.
-- ============================================================================

-- ── Entitlements ───────────────────────────────────────────────────────────
create table if not exists public.entitlements (
  user_id               uuid primary key references auth.users(id) on delete cascade,
  tier                  text not null default 'free' check (tier in ('free', 'silver', 'gold')),
  free_writing_used     integer not null default 0,
  subscription_provider text,          -- 'paddle' | 'lemonsqueezy' | null
  subscription_id       text,          -- provider's subscription id
  subscription_status   text,          -- provider status (active, canceled, past_due, …)
  current_period_end    timestamptz,   -- when the paid period ends (safety net for downgrades)
  updated_at            timestamptz not null default now()
);

alter table public.entitlements enable row level security;

-- The owner may READ their own row (for showing tier + remaining quota in the UI)…
drop policy if exists entitlements_select_own on public.entitlements;
create policy entitlements_select_own on public.entitlements
  for select using (auth.uid() = user_id);

-- …but there are deliberately NO insert/update/delete policies, so authenticated
-- users cannot change their own tier. Only the service role (which bypasses RLS)
-- writes here — from the billing webhook and the server-side usage counters.
grant select on public.entitlements to authenticated;
grant all on public.entitlements to service_role;

-- Seed a default (free) row for every existing user.
insert into public.entitlements (user_id)
select id from auth.users
on conflict (user_id) do nothing;

-- Keep new signups entitled automatically.
create or replace function public.handle_new_user_entitlement()
returns trigger
language plpgsql
security definer
set search_path = public, pg_temp
as $$
begin
  insert into public.entitlements (user_id)
  values (new.id)
  on conflict (user_id) do nothing;
  return new;
end;
$$;

drop trigger if exists on_auth_user_created_entitlement on auth.users;
create trigger on_auth_user_created_entitlement
  after insert on auth.users
  for each row execute function public.handle_new_user_entitlement();

-- ── Per-feature AI usage counters ──────────────────────────────────────────
create table if not exists public.ai_usage (
  user_id uuid not null references auth.users(id) on delete cascade,
  day     date not null default current_date,
  feature text not null,                 -- 'tutor' | 'writing'
  count   integer not null default 0,
  primary key (user_id, day, feature)
);

alter table public.ai_usage enable row level security;
-- No policies: only the service role touches this table.
grant all on public.ai_usage to service_role;
