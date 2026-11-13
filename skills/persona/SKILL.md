---
name: persona
description: Builds marketing personas grounded in data or in explicitly labelled hypotheses, with a confidence level for every attribute and a plan to validate the weak ones. Use when the user wants personas, a target/customer profile, buyer personas, segments to bring to life, or asks for "persona", "cible", "profil client", "fiche persona" - in English or French. First skill of the chain persona -> parcours-client -> plan-crm.
license: MIT
metadata:
  author: CustoVox.ai
  version: "0.1.0"
  pack: skills-marketing-fr
---

# Persona

You help the user build personas that a marketing, product or customer-service team can
**trust and act on**. A persona is a decision tool, not a portrait: every statement must
say where it comes from and how sure we are.

**Language**: write the deliverable in the user's language (French if they write in French).

## Principles (non-negotiable)

1. **Evidence first.** Each attribute is tagged with its source (S1, S2...) and a
   confidence level: **High**, **Medium** or **Low**. See `references/method.md`.
2. **Hypotheses are allowed, hidden hypotheses are not.** With no data, you can still
   build *proto-personas*, clearly labelled as such, all attributes at Low confidence.
3. **Behaviour over demographics.** Personas differ by goals, needs, behaviours and
   barriers. Age, gender or family status only if they change a marketing decision.
4. **No invented quotes.** Quotes come from real verbatims (with source). If you write an
   illustrative sentence, label it "illustrative" in italics.
5. **Few and distinct.** 2-4 personas (one *primary*), plus an optional *negative* persona
   (who we deliberately do not target). If two personas would get the same marketing
   actions, merge them.
6. **No stereotypes.** Avoid clichés tied to gender, age or origin; avoid stock-photo
   descriptions. Use a first name only as a memory aid, or a role name ("The Committed
   Naturalist").

## Step 1 - Framing questions

Ask only what you cannot infer; group the questions in a single message (5 max):

1. **Decision**: what will these personas be used for (campaign, product launch, website
   redesign, CRM plan, customer service)? What decision comes next?
2. **Scope**: brand/offer, market, B2C or B2B, country, new or existing customers?
3. **Available data**: customer database, analytics, surveys, reviews or a Voice-of-the-
   Customer report, interviews, sales or support feedback, market studies?
4. **Known segments** or beliefs inside the team ("our customers are mostly...")?
5. **Constraints**: number of personas expected, format, deadline?

If the user has no data at all, say so plainly, offer proto-personas, and plan the
validation (Step 6).

## Step 2 - Inventory the evidence

List every source in a table: ID, description, type (quantitative / qualitative /
secondary / assumption), size or sample, date, known biases. If a Voice-of-the-Customer
report exists (e.g. produced by the `voix-du-client` skill, `voc_report.json`), use its
themes, counts and quotes as a primary qualitative source.

## Step 3 - Find the behavioural variables

Identify 5-8 variables that genuinely split customers (method in `references/method.md`):
motivation, purchase trigger, decision criteria, price sensitivity, channel habits,
expertise, usage frequency, relationship with the brand, main barrier. Place the
observations on each variable and look for recurring combinations: each stable
combination is a candidate persona.

## Step 4 - Write the personas

Use the template in `assets/persona-template.md`. For each persona:
- role name, one-line summary, share of customers or revenue if known;
- goals and *jobs to be done*; triggers; decision criteria; channels and touchpoints;
- pains and barriers; what delights them; objections; quotes (sourced);
- what the brand should say and do, and what it should avoid;
- the evidence table (attribute -> sources -> confidence).

Then add a comparison grid of all personas on the behavioural variables.

## Step 5 - Check quality

- [ ] Every attribute has a source ID and a confidence level.
- [ ] Each persona changes at least one marketing decision compared with the others.
- [ ] Quotes are real (sourced) or labelled illustrative.
- [ ] No unjustified demographic detail, no stereotype.
- [ ] The primary persona is named and justified (value, volume, strategic fit).

## Step 6 - Validation plan

For each Low or Medium attribute that matters for the decision, propose the cheapest
way to raise confidence: a CRM query, a 5-question survey, 5 interviews, an A/B test,
a review of support tickets. Give a priority order.

## Output and hand-off

Save the deliverable as `marketing-deliverables/01-personas.md` in the user's working
folder (create it if needed), unless the user asks otherwise. Keep the persona IDs
(`P1`, `P2`... and `PN` for the negative persona): the **parcours-client** skill reads
this file and maps a journey for a chosen persona; the **plan-crm** skill reuses the
segments. End with a short summary in the chat and suggest the next step
("map the customer journey of P1").

## Example

A complete example on the fictional brand Maison Verveine is in
`references/example-maison-verveine.md`: three personas and a negative persona built
from a Voice-of-the-Customer report, a CRM extract, analytics and six interviews.
