import { supabase } from './supabase'
import { resizeToSquare } from './resizeImage'

const BUCKET = 'avatars'
const avatarPath = userId => `${userId}/avatar.jpg`

/**
 * Resize the chosen image, upload it to the public `avatars` bucket at a path
 * owned by this user, and record the URL on their profile. Returns the new
 * public URL (cache-busted so a re-upload to the same path shows immediately).
 *
 * Throws with a friendly message the caller can surface — e.g. if the bucket
 * hasn't been created yet (supabase/phase12-avatars.sql).
 */
export async function uploadAvatar(user, file) {
  const blob = await resizeToSquare(file, 256)

  const { error: upErr } = await supabase.storage
    .from(BUCKET)
    .upload(avatarPath(user.id), blob, { upsert: true, contentType: 'image/jpeg' })
  if (upErr) {
    throw new Error(
      /bucket|not found/i.test(upErr.message)
        ? 'Photo storage isn’t set up yet. Run supabase/phase12-avatars.sql, then try again.'
        : upErr.message,
    )
  }

  const { data } = supabase.storage.from(BUCKET).getPublicUrl(avatarPath(user.id))
  const url = `${data.publicUrl}?t=${Date.now()}`

  const { error: metaErr } = await supabase.auth.updateUser({ data: { avatar_url: url } })
  if (metaErr) throw new Error(metaErr.message)
  return url
}

/** Remove the uploaded photo and fall back to the initials avatar. */
export async function removeAvatar(user) {
  await supabase.storage.from(BUCKET).remove([avatarPath(user.id)])
  await supabase.auth.updateUser({ data: { avatar_url: null } })
}
