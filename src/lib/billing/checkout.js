// Phase 3 will wire Paddle.js checkout here (open the overlay for the chosen
// tier's price, then a webhook flips the user's entitlement). Until then,
// checkout is not yet available.
export const CHECKOUT_READY = false

export async function startCheckout(/* tierId */) {
  throw new Error('Payments are being set up — upgrades go live shortly.')
}
