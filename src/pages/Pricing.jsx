import { useState } from 'react'
import { Link } from 'react-router-dom'
import { TIERS, TIER_RANK } from '../lib/billing/tiers'
import { useUsage } from '../lib/useUsage'
import { startCheckout, CHECKOUT_READY } from '../lib/billing/checkout'
import './Pricing.css'

export default function Pricing() {
  const { usage } = useUsage()
  const currentTier = usage?.tier ?? 'free'
  const [busy, setBusy] = useState(null)
  const [notice, setNotice] = useState('')

  async function onUpgrade(tierId) {
    setNotice('')
    setBusy(tierId)
    try {
      await startCheckout(tierId)
    } catch (e) {
      setNotice(e.message)
    } finally {
      setBusy(null)
    }
  }

  return (
    <div className="pricing">
      <header className="pricing-head">
        <p className="pricing-eyebrow num">Plans</p>
        <h1 className="pricing-title">More AI when you need it.</h1>
        <p className="pricing-sub">
          Every test, band score and evidence review is free — always. Plans only
          raise how much you can use the <strong>AI Tutor</strong> and{' '}
          <strong>writing checks</strong>. Cancel anytime.
        </p>
      </header>

      {notice && <p className="pricing-notice" role="status">{notice}</p>}

      <div className="pricing-grid">
        {TIERS.map(tier => {
          const isCurrent = tier.id === currentTier
          const isIncluded = TIER_RANK[tier.id] <= TIER_RANK[currentTier]
          return (
            <section
              key={tier.id}
              className={
                'plan' +
                (tier.popular ? ' plan--popular' : '') +
                (isCurrent ? ' plan--current' : '')
              }
              style={{ '--skill': tier.accent }}
              data-ghost={tier.ghost}
            >
              {tier.popular && <span className="plan-badge">Most popular</span>}

              <div className="plan-body">
                <p className="plan-name">{tier.name}</p>

                <p className="plan-price">
                  {tier.price === 0 ? (
                    <span className="plan-free">Free</span>
                  ) : (
                    <>
                      <span className="plan-currency">$</span>
                      <span className="num plan-amount">{tier.price}</span>
                      <span className="plan-period">/mo</span>
                    </>
                  )}
                </p>

                <p className="plan-tagline">{tier.tagline}</p>

                <ul className="plan-features">
                  {tier.features.map((f, i) => (
                    <li key={i} className={f.strong ? 'is-strong' : ''}>
                      <span className="plan-check" aria-hidden="true">✓</span>
                      {f.text}
                    </li>
                  ))}
                </ul>

                <div className="plan-cta">
                  {isCurrent ? (
                    <span className="plan-current-tag">Your current plan</span>
                  ) : isIncluded ? (
                    <span className="plan-current-tag plan-current-tag--muted">Included in your plan</span>
                  ) : (
                    <button
                      className="plan-upgrade"
                      onClick={() => onUpgrade(tier.id)}
                      disabled={!CHECKOUT_READY || busy === tier.id}
                    >
                      {!CHECKOUT_READY
                        ? 'Coming soon'
                        : busy === tier.id
                          ? 'Opening…'
                          : `Upgrade to ${tier.name}`}
                    </button>
                  )}
                </div>
              </div>
            </section>
          )
        })}
      </div>

      <p className="pricing-foot">
        Prices in USD, billed monthly. Payments are processed securely by Paddle,
        our authorised reseller. Manage your plan anytime from{' '}
        <Link to="/settings">your account</Link>.
      </p>
    </div>
  )
}
