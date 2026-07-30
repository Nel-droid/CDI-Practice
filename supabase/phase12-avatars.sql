-- Phase 12 — profile photos
--
-- A public bucket for avatar images. Photos aren't sensitive and a public URL
-- avoids signed-URL refresh, so the <img> just works. Each candidate can only
-- write to their own folder ("<user id>/avatar.jpg"); anyone can read.
--
-- Run once in the Supabase SQL editor. Safe to re-run.

insert into storage.buckets (id, name, public)
values ('avatars', 'avatars', true)
on conflict (id) do nothing;

-- Anyone may read avatar images (they're shown in the app UI).
create policy "avatars public read"
  on storage.objects for select
  using (bucket_id = 'avatars');

-- A candidate may upload / replace / delete only files under their own id.
create policy "avatars write own"
  on storage.objects for insert
  to authenticated
  with check (bucket_id = 'avatars' and (storage.foldername(name))[1] = auth.uid()::text);

create policy "avatars update own"
  on storage.objects for update
  to authenticated
  using (bucket_id = 'avatars' and (storage.foldername(name))[1] = auth.uid()::text);

create policy "avatars delete own"
  on storage.objects for delete
  to authenticated
  using (bucket_id = 'avatars' and (storage.foldername(name))[1] = auth.uid()::text);
