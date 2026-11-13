# Example - Audit of the Crème Nuit Réparatrice product page

> Fictional brand, page and data (see the pack's `examples/maison-verveine.md`). The page
> described below does not exist; it is a teaching case built to be consistent with the
> brand's personas and Voice-of-the-Customer report. French quotes are verbatims from the
> fictional dataset. Deliverable shown as the skill would save it in
> `marketing-deliverables/audit-creme-nuit-reparatrice.md`.

---

# Product page audit - Crème Nuit Réparatrice - Maison Verveine

_October 2026 · Source: screenshots (mobile and desktop) and HTML provided by the team ·
Target personas: P1 The Committed Naturalist (repeat purchase), P2 The Results-Driven Skin
Fixer (first purchase) · Context: best-seller, reformulated in August 2026; page = 18 % of
product-page traffic; conversion 2.1 % (3.0 % in June)._

## 1. Summary

| Axis | Weight | Score /100 |
|---|---|---|
| A. Content | 30 % | 50 |
| B. Reassurance | 25 % | 36 |
| C. SEO | 20 % | 63 |
| D. Conversion | 25 % | 57 |
| **Overall** | | **51** |

The page sells the old product: ingredient list, reviews and delivery promise all date
from before August. For P2, who chooses on proof and tolerance, this is the main risk.

Top 5 actions:
1. Update the ingredient list and add a visible "New formula, August 2026" notice (what
   changed, why, patch-test advice).
2. Replace the "Delivered in 48 h" banner with a realistic, dynamic delivery estimate.
3. Remove the "hypoallergenic" claim until it is supported by a documented test.
4. Separate reviews of the new formula, sort by most recent, answer negative reviews.
5. Make the add-to-cart button visible without scrolling on mobile; delay the newsletter
   pop-up.

## 2. The page as it is

- **Above the fold (mobile)**: image gallery (4 photos) taking the whole screen; title
  "Crème Nuit Réparatrice"; 4.6 stars (312 reviews); price €34. The button appears after
  one and a half screens of scrolling. A newsletter pop-up opens after 5 seconds and
  covers the button area.
- **Above the fold (desktop)**: gallery left; right column with title, stars, price,
  "Livraison 48h offerte dès 59 €" banner, quantity, add-to-cart button.
- **Rest of the page**: description (brand story, "hypoallergénique", "99 % d'origine
  naturelle"); tabs "Ingrédients" (INCI list **from before the reformulation**), "Conseils
  d'utilisation" (one line); "Vous aimerez aussi" carousel; reviews sorted by "most helpful"
  (the first 20 are from 2025).
- **Not assessed**: real loading speed, checkout steps.

## 3. Detailed grid

| # | Criterion | Score | Evidence | Justification |
|---|---|---|---|---|
| A1 | Title | 1 | "Crème Nuit Réparatrice" | Clear, but no need or skin type stated |
| A2 | Benefit summary | 1 | Benefits only in the long description | No bullet points above the fold |
| A3 | Description | 2 | Brand story + action of verbena extract | Rich and on-brand |
| A4 | Usage | 1 | "Appliquer le soir sur peau propre." | No quantity, duration, patch-test advice |
| A5 | Composition | 0 | INCI tab | List does not match the reformulated product |
| A6 | Visuals | 1 | 4 packshots | No texture, scale or in-use shot |
| A7 | Video | 0 | - | None |
| A8 | Tone and brand | 2 | Description | Consistent with "short formulas, French plants" |
| B1 | Reviews | 1 | 4.6 stars, 312 reviews | Old reviews first; no answers to negative reviews; new formula not identified |
| B2 | FAQ | 0 | - | Recurring questions (sensitive skin, new formula, jar) not answered |
| B3 | Delivery | 0 | "Livraison 48h" | Contradicted by recent reviews: « Avant je recevais en 2 jours, maintenant c'est plus d'une semaine. » (AV-0111) |
| B4 | Returns | 1 | Footer link | Not mentioned near the button |
| B5 | Proof of claims | 0 | "hypoallergénique" | No test or method cited |
| B6 | Contact | 1 | Chat icon | No response time; chat answers automatically (VoC: 36 service-access complaints) |
| B7 | Payment | 2 | Logos near the button | Clear |
| C1 | Title tag / meta | 1 | "Crème Nuit - Maison Verveine" / meta auto-generated | Too short, no intent keywords |
| C2 | Headings | 2 | One H1 | Correct |
| C3 | URL | 2 | /creme-nuit-reparatrice | Clean |
| C4 | Unique content | 2 | Original text | - |
| C5 | Structured data | 1 | Product + Offer | No review markup |
| C6 | Images | 0 | IMG_4521.jpg, alt="" | No descriptive name or alt text |
| C7 | Internal links | 1 | Carousel only | No link to the skincare routine guide |
| C8 | Performance | 1 | 3.8 MB of images | To check with PageSpeed Insights |
| D1 | Price | 1 | €34 | No unit price (€68/100 ml), required by EU price indication rules (Directive 98/6/EC) |
| D2 | Call to action | 1 | Desktop OK, mobile below the fold | Main traffic is mobile (62 %) |
| D3 | Variants and stock | 2 | One size, "En stock" | Clear |
| D4 | Cross-sell | 1 | Generic carousel | Not a routine (sérum + crème) |
| D5 | Friction | 1 | Pop-up at 5 s | Blocks the button on mobile |
| D6 | Mobile ergonomics | 1 | Gallery | Takes the whole first screen |
| D7 | Accessibility | 1 | Light grey text on white | Low contrast; images without alt text |

Scores: Content 8/16 = 50 · Reassurance 5/14 = 36 · SEO 10/16 = 63 · Conversion 8/14 = 57 ·
Overall = 0.30 x 50 + 0.25 x 36 + 0.20 x 63 + 0.25 x 57 = 51.

## 4. Recommendations

| Priority | Criterion | Problem | Recommendation | Impact | Ease | Owner |
|---|---|---|---|---|---|---|
| 9 | A5, B1 | Page describes the old formula | Update INCI; "New formula" notice; tag reviews by formula | 3 | 3 | Content + Quality |
| 9 | B3 | Delivery promise no longer true | Dynamic estimate from carrier data; remove "48h" | 3 | 3 | E-commerce |
| 9 | B5 | Unsupported "hypoallergenic" claim | Remove, or cite the test (protocol, panel) | 3 | 3 | Quality / Legal |
| 6 | D1 | No unit price | Display €68/100 ml | 2 | 3 | E-commerce |
| 6 | B2 | Objections unanswered | FAQ built from the VoC report (see rewrites) | 2 | 3 | Content |
| 6 | D2, D5 | Mobile button hidden | Sticky add-to-cart bar on mobile; pop-up after 30 s or on exit | 3 | 2 | Development |
| 6 | B1 | Negative reviews unanswered | Answer every 1-2 star review within 48 h | 3 | 2 | Customer service |
| 4 | A6, C6 | Weak visuals, no alt text | Texture and in-use photos; descriptive names and alt texts | 2 | 2 | Design |
| 4 | D4 | Generic cross-sell | "Evening routine" bundle (sérum + crème) | 2 | 2 | Merchandising |
| 3 | C5 | No review markup | Add review markup, check with the Rich Results Test | 1 | 3 | Development |
| 2 | A7 | No video | 20-second texture video | 2 | 1 | Design |

## 5. Ready-to-use rewrites (in French, the site's language)

**Title**: Crème Nuit Réparatrice à la verveine - peaux sèches et sensibles - 50 ml

**Benefit bullets**:
- Répare et nourrit pendant la nuit
- Texture fondante, non grasse
- Formule courte, 99 % d'ingrédients d'origine naturelle
- Fabriquée dans la Drôme

**New formula notice**: « Nouvelle formule (août 2026) : nous avons [changement réel à
préciser par l'équipe qualité]. Si vous avez la peau sensible, faites un test au creux du
coude 24 h avant la première utilisation. Une question ? Notre équipe qualité vous répond :
[contact]. »

**Reassurance block (near the button)**: « Livraison estimée : [date dynamique] ·
Retours gratuits sous 30 jours · Paiement sécurisé · Un conseil ? [chat], réponse en
moins de 2 h en semaine »

**FAQ**:
- La nouvelle formule convient-elle aux peaux sensibles ? → [réponse appuyée sur les tests]
- Qu'est-ce qui a changé dans la formule ? → [liste]
- Comment le pot est-il protégé pendant le transport ? → [à publier une fois le nouveau
  calage en place]
- Combien de temps dure un pot ? → [environ 3 mois en usage quotidien, à vérifier]

**Meta title**: Crème de nuit réparatrice naturelle à la verveine | Maison Verveine
**Meta description**: Crème de nuit à la verveine pour peaux sèches et sensibles :
texture fondante, formule courte fabriquée en France. Livraison et retours offerts dès 59 €.

## 6. Measurement plan

| Change | Metric | Method | Duration |
|---|---|---|---|
| Sticky mobile button + delayed pop-up | Mobile add-to-cart rate | A/B test | 3 weeks |
| New formula notice + FAQ | Conversion; questions to customer service about the cream | Before/after | 4 weeks |
| Realistic delivery estimate | Conversion; "where is my order" tickets | Before/after | 4 weeks |

## 7. To check with tools

| Item | Tool |
|---|---|
| Loading speed, Core Web Vitals | PageSpeed Insights |
| Structured data | Rich Results Test |
| Contrast and alt texts | WAVE |
| Queries leading to the page | Search Console |
