# Saudi Payment Gateways — وثيقة العمل الحر Compatible
*Research: Mar 25, 2026*

## ✅ Confirmed: Works with Freelancer Certificate

### 1. PayTabs ⭐ (Best documented)
- **Explicitly accepts** وثيقة العمل الحر — no سجل تجاري needed
- **Docs needed:** Freelancer cert + National ID + bank statement (IBAN)
- **Methods:** Cards, Mada, SADAD, wallets
- **Fees:** ~2.85% + 0.30 SAR per transaction
- **Website:** paytabs.com

### 2. MyFatoorah (ماي فاتورة) ⭐
- **Supports Saudi freelancers** — وثيقة عمل حر accepted at onboarding
- **Methods:** Visa/MC/AMEX, Apple Pay, Google Pay, **STC Pay**, bank transfer
- **PCI DSS handled** — no compliance work on our side
- **Embedded payment** (no redirect) or hosted page
- **API access** — sandbox for testing, live after approval
- **Deposits in 24h**
- **Website:** myfatoorah.com

### 3. Moyasar
- Saudi-focused, supports Mada + cards + wallets
- Freelancer acceptance: likely but **verify directly**
- Website: moyasar.com

### 4. Tap Payments
- Regional (GCC), cards + Mada + wallets
- Freelancer acceptance: **verify directly**
- Website: tap.company

### 5. HyperPay
- Cards, Mada, wallets
- Freelancer acceptance: **verify directly**
- Website: hyperpay.com

## Recommendation
**MyFatoorah** — M already mentioned it, supports STC Pay (huge in Saudi), embedded payments, API-ready, works with وثيقة عمل حر. PayTabs as backup.

## What M Needs
- وثيقة العمل الحر (freelancer certificate)
- National ID
- Bank account details (IBAN)
- That's it — no سجل تجاري required
