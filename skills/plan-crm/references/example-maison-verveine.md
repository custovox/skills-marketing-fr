# Example - CRM plan for Maison Verveine

> Fictional brand and data (see the pack's `examples/maison-verveine.md`). This plan builds
> on the persona example (P1, P2, P3, PN) and the replenishment journey of P1 (opportunities
> O1 to O10). Deliverable shown as the skill would save it in
> `marketing-deliverables/03-crm-plan.md`.

---

# CRM plan - Maison Verveine - November 2026 to April 2027

_October 2026 · Inputs: `01-personas.md`, `02-customer-journey-P1-replenishment.md`,
Voice-of-the-Customer report (S1), CRM extract (S2)._

## 1. Summary

- **Business objective**: bring the 12-month repeat purchase rate back from 31 % to 35 %
  after the drop in satisfaction since July (carrier change, broken jars, reformulation).
- **Launch first**: SC3 reformulation information (safety and trust), SC1 service recovery
  (customers hurt since July), SC7 gift calendar (Christmas is in 8 weeks).
- **Principle**: repair before selling. The first three months focus on service and
  information messages; discounts stay exceptional.

## 2. Objectives and KPIs

| Level | Objective | KPI | Baseline | Target | Deadline |
|---|---|---|---|---|---|
| Business | Increase repeat purchase | 12-month repeat purchase rate | 31 % | 35 % | Sep 2027 |
| Business | Convert new customers | Second purchase within 90 days | 19 % | 24 % | Apr 2027 |
| Relationship | Repair the experience | Monthly average review rating | 2.96 (Sep 2026) | ≥ 3.8 | Mar 2027 |
| Relationship | Keep pressure acceptable | Unsubscribe rate per campaign | 0.4 % | < 0.3 % | ongoing |

## 3. Data and consent

| Data needed | Where it is | Quality | Used by |
|---|---|---|---|
| Orders, products, dates | E-commerce platform → CRM | good | all |
| Carrier status events | Carrier API (new) | to connect | SC1, SC2 |
| Ticket reasons and status | Help desk | tags inconsistent | SC1, exclusions |
| Gift option, event dates | Checkout | good | SC7 |
| Consent per channel | CRM | good for e-mail, partial for SMS | all marketing scenarios |

| Channel | Legal basis | Contactable base | Notes |
|---|---|---|---|
| E-mail marketing | consent, or soft opt-in for existing customers (similar products) | 27,300 customers (71 %) | opt-out link in every message |
| SMS marketing | consent | 6,900 (18 %) | reserve for high-value moments |
| App push | consent in the app | ~5,800 users | replenishment, delivery |
| Service messages (order, delivery, product information) | contract / legitimate interest | all customers | not counted in marketing pressure |

## 4. Segments

| ID | Segment | Rule | Size | Revenue share | Persona(s) | Relationship objective |
|---|---|---|---|---|---|---|
| SEG1 | New customers | 1 order, less than 90 days ago | 7,900 | 9 % | P2, P3 | Second purchase |
| SEG2 | Loyal naturalists | 3+ orders in 12 months | 9,600 | 41 % | P1 | Retain, recognise, advocacy |
| SEG3 | Regulars | 2 orders in 12 months | 8,400 | 24 % | P1, P2 | Move to a routine |
| SEG4 | Seasonal gift buyers | ≥ 60 % of orders in Nov-Dec or May, gift option used | 6,200 | 11 % | P3 | Successful gifts, convert recipients |
| SEG5 | At risk | 2+ past orders, none for 150+ days | 4,100 | 10 % | P1, P2 | Win back |
| SEG6 | Hurt since July (overlay) | "where is my order" or breakage ticket since 1 July 2026 | 2,900 | - | all | Recovery, then return to normal scenarios |
| - | Not addressable | marketplace-only buyers (PN), no consent | 2,200 | 5 % | PN | none (negative persona) |

## 5. Scenarios

### SC1 - Service recovery (O1, O7 · all personas, priority SEG2)

| Field | Content |
|---|---|
| Objective | Turn a failed delivery into a repaired relationship |
| Trigger | Ticket "late parcel" or "breakage" closed, or parcel delivered more than 3 days after the promised date |
| Target / exclusions | SEG6; exclude open tickets and customers already compensated |
| Sequence | D+1 after closure: personal e-mail signed by the customer service manager (apology, what we are changing: new insert, carrier plan) · gesture: free shipping on next order (SEG2: plus a full-size sample) · D+21: one-question check "Did we put things right?" |
| Personalisation | Product concerned, number of orders, persona |
| KPI and control group | Reorder rate at 120 days vs 10 % hold-out; recovery question score |
| Owner | Customer service + CRM |

### SC2 - Proactive delay alert (O1 · service message)

| Field | Content |
|---|---|
| Objective | Prevent "where is my order" contacts |
| Trigger | No carrier event for 48 h, or promised date exceeded |
| Target / exclusions | All orders in transit |
| Sequence | E-mail + app push: honest status, new estimated date, link to self-service tracking, one-click callback request |
| KPI | "Where is my order" tickets: -30 % |
| Owner | E-commerce |

### SC3 - Crème Nuit reformulation information (O6 · P1, P2)

| Field | Content |
|---|---|
| Objective | Inform, protect and keep trust after the August reformulation |
| Trigger | One-off send, then included in every Crème Nuit order confirmation |
| Target / exclusions | All buyers of the Crème Nuit since 1 August 2026 (service/product information, not marketing) |
| Sequence | What changed and why · patch-test advice · how to report a reaction (direct line to the quality team) · follow-up call for customers who report a reaction |
| KPI | Reactions reported and handled within 48 h; Crème Nuit reorder rate |
| Owner | Quality + Product + CRM |

### SC4 - Replenishment (O5 · P1)

| Field | Content |
|---|---|
| Objective | Reorder before running out, without a discount |
| Trigger | 80 days after an order containing the Crème Nuit or the Sérum (adjusted to each customer's own cycle when 3+ orders) |
| Target / exclusions | SEG2, SEG3; exclude orders in the last 30 days and open tickets |
| Sequence | App push or e-mail: "Time to restock?" with the usual basket pre-filled · D+7 reminder only if opened and not purchased |
| KPI and control group | Reorder rate at 120 days vs hold-out |
| Owner | CRM |

### SC5 - Welcome and second purchase (P2, P3 · SEG1)

| Field | Content |
|---|---|
| Objective | Second purchase within 90 days |
| Trigger | First order delivered |
| Target / exclusions | SEG1; exclude marketplace buyers and open tickets |
| Sequence | D0: brand story and formulas · D10: usage guide for the product bought, "How is your skin?" · D30: routine suggestion based on the first product · D60: customer reviews of the suggested product |
| KPI | Second purchase at 90 days (19 % → 24 %) |
| Owner | CRM |

### SC6 - Good end after delivery (O7 · all)

| Field | Content |
|---|---|
| Objective | End the experience on a positive note (peak-end rule) |
| Trigger | 10 days after delivery |
| Target / exclusions | All customers; review request only if no ticket on the order |
| Sequence | Usage tip + how to reach an advisor · review request if the order went well |
| KPI | Average review rating; share of reviews mentioning advice |
| Owner | CRM |

### SC7 - Gift calendar (P3 · SEG4)

| Field | Content |
|---|---|
| Objective | Successful gifts delivered on time; convert recipients |
| Trigger | 3 weeks before Christmas and Mother's Day |
| Target / exclusions | SEG4 + newsletter subscribers who bought a gift box |
| Sequence | Gift guide with **guaranteed last order dates** · code conditions written in the e-mail (no hidden exclusions) · insert card in gift parcels with a welcome offer for the recipient |
| KPI | Gift orders delivered on time; recipient card redemption |
| Owner | CRM + Logistics |

### SC8 - Win-back (SEG5)

| Field | Content |
|---|---|
| Objective | Reactivate lapsed customers, and learn why they left |
| Trigger | 150 days without an order (for customers with 2+ orders) |
| Target / exclusions | SEG5; exclude SEG6 customers with an unresolved complaint |
| Sequence | D0: "What's new" (new insert, carrier changes) + one-question survey "Why did you stop?" · D15: free sample with next order · D45: stop |
| KPI | Reactivation rate at 60 days; survey answers fed into the next VoC analysis |
| Owner | CRM |

### SC9 - Loyalty circle (O8, O10 · P1 · SEG2)

| Field | Content |
|---|---|
| Objective | Recognise loyal customers without discounting the brand |
| Trigger | Third order in 12 months |
| Target / exclusions | SEG2 |
| Sequence | Welcome to the circle: free shipping from €49, early access to launches, a full-size sample twice a year, invitation to test new formulas (and, later, refills) |
| KPI | Order frequency of SEG2; share of SEG2 reviews and referrals |
| Owner | CRM + Marketing |

## 6. Rules and governance

- **Pressure**: at most 2 marketing messages per week and 6 per month per customer; service
  messages are not counted but grouped when possible.
- **Priority**: SC3 > SC1/SC2 > SC7 > SC4 > SC5 > SC6 > SC8 > SC9 > newsletter.
- **Quiet period**: no marketing message for 14 days after a complaint, until SC1 has run.
- **Control groups**: 10 % random hold-out on SC1, SC4, SC5 and SC8.
- **Review**: monthly 1-hour meeting CRM + customer service + logistics; quarterly VoC update
  with voc-skill.

## 7. Tools

| Need | Current tool | Gap | Recommendation |
|---|---|---|---|
| Triggered e-mail and push | E-mail tool (newsletters only) | no event-based automation | Use or add a marketing automation tool connected to orders and carrier events |
| Carrier events | none | no delay detection | Connect the carrier API (SC2) |
| Ticket context | Help desk without order history | advisors ask customers to repeat | Integrate order history in the help desk (journey O2) |
| Measurement | Spreadsheet | no hold-out tracking | Simple dashboard: scenarios x KPIs x control groups |

## 8. Roadmap

| Horizon | Actions | Owner | Success criterion |
|---|---|---|---|
| 30 days | SC3 sent; SC2 live; SC1 live for SEG6; SC7 Christmas edition | CRM, Quality, E-commerce | Reactions handled within 48 h; Christmas last order dates met |
| 60 days | SC4 and SC6 live; dashboard with control groups | CRM | First uplift readings |
| 90 days | SC5, SC8, SC9 live; first quarterly review with VoC update | CRM, Marketing | Monthly rating ≥ 3.5; second purchase at 90 days trending up |

## 9. Journey opportunities not covered (and why)

| Opportunity | Reason |
|---|---|
| O2 Self-service tracking and callback | Service project (customer service + IT), prerequisite for SC2's callback link |
| O3 Carrier improvement plan | Logistics decision, outside CRM |
| O4 Cardboard insert for jars | Logistics; SC1 announces it once in place |
| O9 Refill pilot | Product decision; SC9 can recruit testers |
