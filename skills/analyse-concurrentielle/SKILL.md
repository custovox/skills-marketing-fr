---
name: analyse-concurrentielle
description: Runs a structured competitive analysis - competitive set (direct, indirect, substitutes), customer-relevant criteria, evidence-based comparison grid, price and offer benchmark, review mining, positioning map and value curve - and turns it into a positioning statement and actions. Use when the user asks for a competitive analysis, competitor benchmark, analyse concurrentielle, benchmark concurrents, carte de positionnement, mapping concurrentiel or positionnement, in English or French.
license: MIT
metadata:
  author: CustoVox.ai
  version: "0.1.0"
  pack: skills-marketing-fr
---

# Competitive analysis (analyse concurrentielle)

You compare a brand with its competitors **from the customer's point of view**, with
evidence for every judgement, and you conclude with a clear positioning and concrete
choices. A competitive analysis that ends with a table and no decision is unfinished.

**Language**: write the deliverable in the user's language (French if they write in French).

## Ethics and sources

Use only public or legitimately obtained information: websites, prices, catalogues,
customer reviews, social media, job offers, press, annual reports, trade fairs, the
user's own customer feedback, transparent mystery shopping. Never suggest obtaining
confidential information, impersonating a customer to extract non-public data, or copying
protected content. Date every observation: prices and offers change.

## Inputs

Personas (`marketing-deliverables/01-personas.md`), Voice-of-the-Customer report (e.g. from
the `voix-du-client` skill) or customer reviews, and any competitor list the team already
has. If you have a web tool, you may collect public information; otherwise ask the user
for links, screenshots or notes.

## Step 1 - Framing questions (one message, 5 max)

1. Which brand/offer and which market (country, channel, customer type)?
2. The decision at stake (launch, repositioning, pricing, messaging, entering a channel)?
3. Competitors already identified? Who do customers compare you with (reviews, sales
   feedback, "vs" searches)?
4. Which customer segments or personas matter most?
5. Time and data available (desk research only, mystery shopping, customer survey)?

## Step 2 - Competitive set

Identify 4-8 competitors in three circles (`references/method.md`): **direct** (same need,
same type of offer), **indirect** (same need, another solution or channel), **substitutes**
(another way to do the job, including "doing nothing" or DIY). Justify each choice by
customer overlap and similarity of resources (Bergen & Peteraf, 2002).

## Step 3 - Criteria that matter to customers

Derive 6-10 key purchase criteria from the personas and customer feedback (not from what the
company likes to talk about). Weight them by persona when they differ.

## Step 4 - Collect and compare

Fill the grid in `assets/competitive-grid-template.md`:
- offer and price benchmark (comparable units, e.g. price per 100 ml);
- score each competitor 1-5 on each criterion, **with evidence** (source, date) and a
  confidence level;
- review mining: what customers praise and criticise for each competitor (the `voix-du-
  client` skill can analyse competitors' public reviews exported by the user);
- communication: promise, proof, tone, main channels.

## Step 5 - Visualise

- **Positioning map**: two axes that matter to customers and that discriminate between
  competitors (Mermaid `quadrantChart`, syntax in `references/method.md`).
- **Value curve** (strategy canvas, Kim & Mauborgne, 2005): scores of each player on each
  criterion, shown as a table and optionally as a chart.

## Step 6 - Conclusions and choices

- Market reading: where competition is crowded, where expectations are unmet.
- Brand position: strengths to defend, weaknesses that matter to customers, threats.
- **Positioning statement** (template in `references/method.md`) and the proof needed.
- Actions using the "eliminate, reduce, raise, create" grid of the value curve, with owners.
- What to monitor (alerts, quarterly review).

## Quality checklist

- [ ] Each score has evidence and a date; uncertain scores are flagged.
- [ ] Criteria come from customers (personas, reviews), not internal opinion.
- [ ] Indirect competitors and substitutes are considered.
- [ ] The positioning is credible (backed by proof) and different.
- [ ] Only public or legitimate sources were used.

## Output

Save as `marketing-deliverables/competitive-analysis.md`. Summarise the positioning and the
top 3 actions in the chat.

## Example

`references/example-maison-verveine.md`: Maison Verveine against three fictional
competitors and organic-store private labels.
