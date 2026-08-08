import crypto from 'node:crypto'
import { admin } from '../_lib/supabase.js'
import { sendJson } from '../_lib/http.js'
import { tierForPriceId, applyEntitlement } from '../_lib/entitlements.js'

// Paddle sends the raw JSON body signed with a per-destination secret. We must
// verify against the RAW bytes, so body parsing is disabled for this route.
export const config = { api: { bodyParser: false } }

const SECRET = process.env.PADDLE_WEBHOOK_SECRET

async function readRaw(req) {
  if (typeof req.body === 'string') return req.body
  if (Buffer.isBuffer(req.body)) return req.body.toString('utf8')
  const chunks = []
  for await (const chunk of req) chunks.push(chunk)
  return Buffer.concat(chunks).toString('utf8')
}

// Header looks like: "ts=1700000000;h1=<hex>". Valid if HMAC-SHA256 of
// `${ts}:${rawBody}` with the destination secret equals h1.
function verifySignature(rawBody, header) {
  if (!SECRET || !header) return false
  const parts = Object.fromEntries(
    header.split(';').map(kv => {
      const i = kv.indexOf('=')
      return [kv.slice(0, i), kv.slice(i + 1)]
    }),
  )
  const { ts, h1 } = parts
  if (!ts || !h1) return false
  const digest = crypto.createHmac('sha256', SECRET).update(`${ts}:${rawBody}`).digest('hex')
  try {
    return crypto.timingSafeEqual(Buffer.from(digest), Buffer.from(h1))
  } catch {
    return false
  }
}

export default async function handler(req, res) {
  if (req.method !== 'POST') return sendJson(res, 405, { error: 'Method not allowed' })

  const raw = await readRaw(req)
  if (!verifySignature(raw, req.headers['paddle-signature'])) {
    return sendJson(res, 401, { error: 'Invalid signature' })
  }

  let event
  try {
    event = JSON.parse(raw)
  } catch {
    return sendJson(res, 400, { error: 'Bad payload' })
  }

  try {
    await handleEvent(event)
  } catch (err) {
    // 500 → Paddle retries (transient DB issues won't silently drop an upgrade).
    return sendJson(res, 500, { error: 'Could not process event' })
  }
  return sendJson(res, 200, { ok: true })
}

async function handleEvent(event) {
  const type = event.event_type
  if (!type || !type.startsWith('subscription.')) return // only subscription lifecycle matters

  const data = event.data || {}
  const userId = data.custom_data?.user_id
  if (!userId) return // can't map to a user without our custom data

  const priceId = data.items?.[0]?.price?.id
  const canceled = type === 'subscription.canceled'
  const tier = canceled ? 'free' : (tierForPriceId(priceId) || 'free')

  await applyEntitlement(admin(), userId, {
    tier,
    subscription_provider: 'paddle',
    subscription_id: data.id ?? null,
    subscription_status: data.status ?? null,
    current_period_end: data.current_billing_period?.ends_at ?? null,
  })
}
