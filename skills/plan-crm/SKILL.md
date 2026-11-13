---
name: plan-crm
description: Builds a CRM and customer relationship plan - objectives, segmentation (RFM, lifecycle, personas), triggered relationship scenarios, contact pressure rules, KPIs, tools and a 90-day roadmap - compliant with GDPR consent rules. Use when the user asks for a CRM plan, relationship marketing plan, plan de relation client, scénarios CRM, marketing automation, segmentation RFM, fidélisation or plan d'animation clients, in English or French. Third skill of the chain persona -> parcours-client -> plan-crm.
license: MIT
metadata:
  author: CustoVox.ai
  version: "0.1.0"
  pack: skills-marketing-fr
---

# CRM plan (plan CRM)

You design a customer relationship plan that a small or mid-sized team can actually run:
a few well-chosen segments, a handful of triggered scenarios, clear rules and indicators.
The aim is to create value for the customer *and* the company, not to send more messages.

**Language**: write the deliverable in the user's language (French if they write in French).

## Inputs

1. `marketing-deliverables/01-personas.md` (skill `persona`): personas and their IDs.
2. `marketing-deliverables/02-customer-journey*.md` (skill `parcours-client`):
   opportunities tagged *CRM* (`O1`, `O5`...). Each one should become a scenario or be
   explicitly set aside.
3. Customer data available: CRM/e-commerce fields, purchase history, consent status,
   e-mail and SMS tools, customer service tool.
If the previous deliverables do not exist, run a short version of their logic in the
framing questions and flag the plan as built on hypotheses.

## Step 1 - Framing questions (one message, 5 max)

1. Business objective for the next 6-12 months (acquire, convert, increase repeat
   purchase, reduce churn, raise basket, recover from a service problem)?
2. Customer base: size, B2C/B2B, purchase frequency, share of contactable customers
   (e-mail and SMS consent)?
3. Data and tools in place (CRM, e-mail/SMS tool, e-commerce platform, customer service)?
4. Team and budget: who will build and run the scenarios, and how much time per week?
5. Constraints: brand tone, discount policy, contact pressure already perceived as high?

## Step 2 - Objectives and indicators

Set 1 business objective, 2-3 relationship objectives and their KPIs with a baseline and
a target (repeat purchase rate, purchase frequency, churn, customer lifetime value, NPS or
CSAT, unsubscribe and complaint rates). Use `references/method.md` for definitions.

## Step 3 - Data and consent check (GDPR)

List the fields needed by the scenarios, where they are, and their quality. Check the
legal basis for each channel (see `references/method.md`, section GDPR): marketing e-mails
and SMS to consumers need prior consent, with an exception for existing customers about
similar products and services, always with an easy opt-out. Service messages (order,
delivery, safety information) are not marketing. When in doubt, recommend checking with
the company's data protection officer. This is guidance, not legal advice.

## Step 4 - Segmentation

Combine three layers, keep 4-7 actionable segments:
- **Value and behaviour**: RFM (recency, frequency, monetary value).
- **Lifecycle**: prospect, new customer, active, loyal, at risk, lapsed.
- **Personas**: map each persona to observable criteria (products bought, channel, use of
  codes...) so that it becomes targetable.
Give each segment a size, its value, its persona(s) and its relationship objective.

## Step 5 - Relationship scenarios

Use `assets/crm-plan-template.md`. For each scenario (6-10 maximum to start):
trigger, target segment and exclusions, sequence (step, delay, channel, message, offer),
personalisation, success KPI, link to the journey opportunity (`O` ID) and persona, owner.
Cover at least: welcome/onboarding, second purchase, replenishment or usage, post-purchase
care, service recovery, win-back, and loyalty. Prefer service and advice over discounts;
use offers deliberately.

## Step 6 - Rules and governance

Contact pressure (maximum marketing messages per customer per week and month), priority
between scenarios, quiet periods after a complaint, control groups (hold-out of 5-10 %) to
measure real uplift, and a monthly review ritual.

## Step 7 - Tools and roadmap

Map needs to tool categories (CRM, e-mail/SMS automation, customer data platform, ticketing,
review platform, dashboard). Name examples only as examples, without ranking or
endorsement. Then give a 30/60/90-day roadmap: quick wins first (scenarios that fix an
urgent pain point), then the scenarios that build value.

## Quality checklist

- [ ] Every CRM opportunity from the journey is either a scenario or explicitly set aside.
- [ ] Each scenario has a trigger, a segment, exclusions, a KPI and an owner.
- [ ] Consent and pressure rules are stated.
- [ ] The plan is sized for the team that will run it.
- [ ] Uplift is measured against a control group.

## Output and hand-off

Save as `marketing-deliverables/03-crm-plan.md`. End with a short summary in the chat (top
3 scenarios to launch first). Related skills: `audit-fiche-produit` (conversion of the
product pages the scenarios link to), `analyse-concurrentielle` (positioning of messages).

## Example

`references/example-maison-verveine.md`: CRM plan for the fictional brand Maison Verveine,
built from its personas and the replenishment journey of P1.
