---
name: parcours-client
description: Maps a customer journey for a given persona and scenario - stages, customer goals and actions, touchpoints, emotions, pain points, moments of truth and prioritised opportunities - with an emotion curve and evidence levels. Use when the user asks for a customer journey map, experience map, parcours client, cartographie du parcours, points de contact, irritants du parcours or moments de vérité, in English or French. Second skill of the chain persona -> parcours-client -> plan-crm.
license: MIT
metadata:
  author: CustoVox.ai
  version: "0.1.0"
  pack: skills-marketing-fr
---

# Customer journey (parcours client)

You map how **one persona** lives **one scenario** with the brand, from the first need to
loyalty (or churn), and you turn the map into prioritised opportunities. A journey map is
useful only if it leads to decisions: every pain point must lead to an opportunity with an
owner and an indicator.

**Language**: write the deliverable in the user's language (French if they write in French).

## Inputs

1. **Personas**: look for `marketing-deliverables/01-personas.md` (produced by the
   `persona` skill). If it exists, ask which persona (`P1`, `P2`...) to map and reuse its
   goals, pains, channels and sources. If it does not, ask for a short description of the
   target and treat it as a Low-confidence proto-persona.
2. **Evidence**: Voice-of-the-Customer report (e.g. from the `voix-du-client` skill),
   analytics funnel, ticket tags, satisfaction scores, interviews, mystery shopping.
3. **Current state or target state?** Default: current state ("as is"). A target journey
   ("to be") comes after, built from the opportunities.

## Step 1 - Framing questions (one message, 5 max)

1. Which persona, and which **scenario**? (e.g. "first purchase of a gift", "replenishment",
   "return of a damaged product"). One journey = one persona x one scenario.
2. Where does the journey **start and end**? (default: from the need to the next purchase)
3. Which **channels** are in scope (online, store, phone, partners)?
4. What decision should the map inform (priorities for next quarter, CRM plan, service
   redesign, website redesign)?
5. Which data and which teams can be involved (to fill the backstage layer)?

## Step 2 - Define the stages

Start from the customer's point of view, not the company's org chart. Default stages for
e-commerce, grouped in the three phases of Lemon & Verhoef (2016):
- **Pre-purchase**: need / trigger · search and comparison
- **Purchase**: choice and order · payment
- **Post-purchase**: delivery · first use · regular use · support and returns · loyalty and
  recommendation

Adapt names and number (5-9 stages). B2B, services and retail variants are in
`references/method.md`.

## Step 3 - Fill each stage

For each stage, in the template `assets/journey-template.md`:
- **Customer goal** and **actions** (verbs, from the customer's side);
- **Touchpoints**, typed as brand-owned, partner-owned, customer-owned or social/external
  (Lemon & Verhoef's typology);
- **Thoughts and quotes** (sourced verbatims; illustrative sentences labelled as such);
- **Emotion** on a 1-5 scale (1 = very negative, 3 = neutral, 5 = very positive), with the
  evidence behind it;
- **Pain points** (with frequency/severity from the VoC report when available);
- **Moments of truth**: stages where the relationship is won or lost;
- **Backstage** (optional, service blueprint logic): the internal teams, systems and
  partners that produce the touchpoint;
- **Evidence and confidence** (High / Medium / Low, same rules as the persona skill).

## Step 4 - Draw the emotion curve

Produce a Mermaid `journey` diagram (it renders on GitHub, in many Markdown viewers and in
Claude) with one section per stage and scores 1-5. Syntax and an example are in
`references/method.md`. Also give a plain-text table for tools that do not render Mermaid.

## Step 5 - Opportunities and priorities

1. List opportunities `O1`, `O2`... Each one answers a pain point or reinforces a delight.
2. Score each on **impact on the customer** (1-3), **business impact** (1-3) and
   **effort** (1-3, 3 = easy). Priority = impact on the customer x business impact x effort.
3. Give extra weight to the **peak** (the most intense moment) and the **end** of the
   experience: people judge an experience largely on these two moments (Kahneman et al.,
   1993). Reducing customer effort usually pays more than adding "delight" (Dixon et al., 2010).
4. For each priority opportunity: owner team, indicator, horizon.

## Step 6 - Quality checklist

- [ ] One persona, one scenario, clear start and end.
- [ ] Every stage has goal, actions, touchpoints, emotion and evidence.
- [ ] Emotions are justified by data or labelled as hypotheses.
- [ ] Moments of truth are identified.
- [ ] Every major pain point leads to an opportunity with owner and indicator.
- [ ] The emotion curve matches the table.

## Output and hand-off

Save as `marketing-deliverables/02-customer-journey.md` (one file per persona/scenario if
there are several, e.g. `02-customer-journey-P1-replenishment.md`). Keep the opportunity
IDs: the **plan-crm** skill turns `O` items tagged *CRM* (triggers, messages, service
promises) into relationship scenarios. End with a short summary in the chat and suggest
the next step.

## Example

`references/example-maison-verveine.md`: replenishment journey of persona P1, "The
Committed Naturalist", for the fictional brand Maison Verveine, built on the personas and
the Voice-of-the-Customer report.
