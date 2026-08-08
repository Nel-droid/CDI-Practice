// Paddle.js (v2) checkout. All values come from env so switching Sandbox↔Live
// is just changing env vars — no code changes.
const TOKEN = import.meta.env.VITE_PADDLE_CLIENT_TOKEN
const ENV = import.meta.env.VITE_PADDLE_ENV || 'production' // 'sandbox' | 'production'
const PRICE = {
  silver: import.meta.env.VITE_PADDLE_PRICE_SILVER,
  gold: import.meta.env.VITE_PADDLE_PRICE_GOLD,
}

// Only offer checkout once the token + both price IDs are configured.
export const CHECKOUT_READY = Boolean(TOKEN && PRICE.silver && PRICE.gold)

let paddlePromise = null
function loadPaddle() {
  if (paddlePromise) return paddlePromise
  paddlePromise = new Promise((resolve, reject) => {
    if (window.Paddle) return resolve(window.Paddle)
    const s = document.createElement('script')
    s.src = 'https://cdn.paddle.com/paddle/v2/paddle.js'
    s.async = true
    s.onload = () => {
      try {
        if (ENV === 'sandbox') window.Paddle.Environment.set('sandbox')
        window.Paddle.Initialize({ token: TOKEN })
        resolve(window.Paddle)
      } catch (e) {
        reject(e)
      }
    }
    s.onerror = () => reject(new Error('Could not load the checkout. Check your connection and try again.'))
    document.head.appendChild(s)
  })
  return paddlePromise
}

/**
 * Open the Paddle checkout overlay for a tier. `user_id` is passed as customData
 * so the webhook can match the completed subscription back to the account.
 */
export async function startCheckout(tierId, { email, userId } = {}) {
  if (!CHECKOUT_READY) throw new Error('Payments are not configured yet.')
  const priceId = PRICE[tierId]
  if (!priceId) throw new Error('Unknown plan.')

  const Paddle = await loadPaddle()
  Paddle.Checkout.open({
    items: [{ priceId, quantity: 1 }],
    ...(email ? { customer: { email } } : {}),
    ...(userId ? { customData: { user_id: userId } } : {}),
    settings: {
      displayMode: 'overlay',
      theme: document.documentElement.getAttribute('data-theme') === 'light' ? 'light' : 'dark',
      successUrl: window.location.origin + '/dashboard?upgraded=1',
    },
  })
}
