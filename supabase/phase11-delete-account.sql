-- Phase 11 — self-service account deletion (optional)
--
-- The Settings → Delete account button always removes a candidate's own data
-- (their attempts) and signs them out. To also delete the auth record itself
-- from the client, install this SECURITY DEFINER function; the app calls it as
-- supabase.rpc('delete_own_account') and ignores it if absent.
--
-- Run in the Supabase SQL editor.

create or replace function public.delete_own_account()
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  -- Only ever deletes the caller's own account.
  delete from public.profiles where id = auth.uid();
  delete from auth.users where id = auth.uid();
end;
$$;

revoke all on function public.delete_own_account() from public;
grant execute on function public.delete_own_account() to authenticated;
