---
name: audit-fiche-produit
description: Audits an e-commerce product page with a scored grid (content, reassurance, SEO, conversion, plus sector rules such as cosmetics claims) and returns prioritised, concrete recommendations and rewritten elements. Use when the user asks to audit, review or improve a product page, product detail page (PDP), fiche produit, page produit, or wants to know why a product page does not convert, in English or French.
license: MIT
metadata:
  author: CustoVox.ai
  version: "0.1.0"
  pack: skills-marketing-fr
---

# Product page audit (audit de fiche produit)

You audit one product page (or compare a few) with a transparent grid, then deliver
recommendations ranked by impact and ease, with ready-to-use rewrites. The audit must be
reproducible: another auditor using the grid should reach a similar score.

**Language**: write the deliverable in the user's language (French if they write in French).

## Inputs

- The page: URL (fetch it if you have a web tool; otherwise ask for the text and
  screenshots, desktop **and** mobile), or the product sheet content pasted by the user.
- Context: target persona (`marketing-deliverables/01-personas.md` if it exists), traffic
  source, conversion rate if known, customer reviews or a Voice-of-the-Customer report
  (e.g. `voix-du-client` skill), competitor pages for comparison.

## Step 1 - Framing questions (one message, 5 max)

1. Which page(s), and which device matters most (mobile share)?
2. Who is the target and what is the page's main job (first purchase, repeat purchase,
   gift, SEO entry page)?
3. Known figures: traffic, conversion rate, add-to-cart rate, return rate?
4. Sector constraints (cosmetics, food, health, children's products, electrical goods...)?
5. Can the team change the template (developers) or only the content?

## Step 2 - Collect the facts

Describe the page as it is, above the fold first (mobile, then desktop): title, price,
visuals, call to action, delivery information, reviews, then the rest of the page. Note
what you could not see (e.g. a carousel, a hidden tab) and do not score it as missing
without saying so.

## Step 3 - Score with the grid

Use `references/audit-grid.md`: 4 axes (Content, Reassurance, SEO, Conversion) plus a
sector axis when relevant. Each criterion is scored 0 (absent or wrong), 1 (partial) or
2 (good), with a one-line justification and the evidence (quote, screenshot detail, URL
element). The skill computes the weighted score out of 100 per axis and overall.

## Step 4 - Recommendations

For each weak criterion: the problem, why it matters for the target, the recommendation,
**the rewritten element when possible** (title, bullet points, reassurance block, FAQ,
meta description), the impact (1-3), the ease (1-3, 3 = easy) and the owner (content,
design, development, logistics, legal/quality). Priority = impact x ease; list quick wins
first. Cross-check with customer reviews: unanswered questions and recurring complaints
are the best content brief.

## Step 5 - Quality checklist

- [ ] Every score has a justification and evidence.
- [ ] Mobile was assessed (or explicitly not available).
- [ ] Claims (health, environment, "natural", "hypoallergenic"...) were checked for proof.
- [ ] Recommendations are specific to this page, with rewrites where possible.
- [ ] Measurement plan: what to track or A/B test after the changes.

## Output

Save as `marketing-deliverables/audit-<product-slug>.md` using
`assets/audit-template.md`. Summarise the score and top 5 actions in the chat.

## Limits

You cannot measure real loading speed, tracking or search rankings without the relevant
tools; flag these as "to check" with the free tool to use (e.g. PageSpeed Insights, the
Rich Results Test, Search Console). This audit is not a legal review of claims.

## Example

`references/example-maison-verveine.md`: audit of the Crème Nuit Réparatrice page of the
fictional brand Maison Verveine, linked to its personas and Voice-of-the-Customer report.
