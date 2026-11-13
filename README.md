# skills-marketing-fr · Skills marketing pour agents IA / Marketing skills for AI agents

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
![Agent Skills](https://img.shields.io/badge/Agent%20Skills-compatible-8A2BE2)
![Skills](https://img.shields.io/badge/skills-6-green)

**[Français](#français) · [English](#english)**

---

## Français

**Six skills marketing qui s'enchaînent (personas → parcours client → plan CRM, plus audit de fiche produit, analyse concurrentielle et préparation à la certification HubSpot) pour obtenir de votre agent IA des livrables de niveau professionnel, sourcés et prêts à présenter.**

<!-- Démonstration : remplacer par docs/images/demo.gif (enchaînement persona → parcours → CRM) -->
<p align="center"><img src="docs/images/demo.gif" alt="Démonstration : de la fiche persona au plan CRM" width="760"></p>

### Les 6 skills

| Skill | Ce que vous obtenez | Fondements |
|---|---|---|
| [`persona`](skills/persona/SKILL.md) | 2 à 4 personas fondés sur des preuves, avec niveau de confiance, *jobs to be done* et persona négatif | Cooper ; Pruitt & Grudin ; Christensen et al. |
| [`parcours-client`](skills/parcours-client/SKILL.md) | Cartographie du parcours (Mermaid), moments de vérité, irritants, opportunités priorisées | Lemon & Verhoef ; Bitner ; Kahneman (pic-fin) |
| [`plan-crm`](skills/plan-crm/SKILL.md) | Segmentation, scénarios automatisés, calendrier, indicateurs, section RGPD, feuille de route 30/60/90 j | Payne & Frow ; Fader et al. ; Reinartz & Kumar |
| [`audit-fiche-produit`](skills/audit-fiche-produit/SKILL.md) | Audit sur 30 critères noté sur 100, conformité des allégations, plan de corrections priorisé | Règlement (UE) 655/2013 ; Chevalier & Mayzlin |
| [`analyse-concurrentielle`](skills/analyse-concurrentielle/SKILL.md) | Grille comparative sourcée, carte de positionnement, courbe de valeur, énoncé de positionnement | Bergen & Peteraf ; Porter ; Kim & Mauborgne |
| [`prepa-certification-hubspot`](skills/prepa-certification-hubspot/SKILL.md) | Plan de révision, fiches, quiz originaux, cas pratique (contenu indépendant, non officiel) | Roediger & Karpicke (effet de test) |

**Enchaînement** : chaque skill enregistre son livrable dans `marketing-deliverables/` (par exemple `01-personas.md`) et le skill suivant le réutilise automatiquement. Le parcours client s'appuie sur vos personas, le plan CRM sur les deux.

**Exemples complets** : chaque skill contient un exemple intégral sur une marque fictive de cosmétiques naturels, **Maison Verveine** ([brief](examples/maison-verveine.md)). Il montre le niveau de qualité attendu.

**Langue** : les instructions sont en anglais (lues par l'agent) ; **les livrables sont produits dans votre langue**. Écrivez en français, vous obtenez un livrable en français.

### Installation pas à pas

Aucun serveur, aucune clé d'API, aucune dépendance : ce sont des dossiers de texte.

**Option A · Claude Code (le plus simple)** : dans Claude Code, tapez :

```
/plugin marketplace add custovox/skills-marketing-fr
/plugin install skills-marketing-fr@custovox-marketing
```

Redémarrez Claude Code.

**Option B · Script d'installation (Claude Code, Codex, Cursor)**

1. Téléchargez le dépôt : bouton vert **Code → Download ZIP**, puis décompressez-le.
2. Lancez le script :
   - **Windows** : clic droit dans le dossier → *Ouvrir dans le terminal*, puis
     ```powershell
     powershell -ExecutionPolicy Bypass -File install\install.ps1
     ```
   - **macOS / Linux** : ouvrez le *Terminal* dans le dossier, puis
     ```bash
     bash install/install.sh
     ```
3. Les 6 skills sont copiés dans `~/.claude/skills` (Claude Code) et `~/.agents/skills` (Codex, Cursor). Redémarrez votre agent.

**Option C · Copie manuelle** : copiez le ou les dossiers voulus de `skills/` dans :

| Agent | Dossier personnel (tous vos projets) | Dossier du projet |
|---|---|---|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` |
| Codex | `~/.agents/skills/` | `.agents/skills/` |
| Cursor | `~/.agents/skills/` ou `~/.cursor/skills/` | `.agents/skills/` ou `.cursor/skills/` |

Sous Windows, `~` correspond à `C:\Users\<votre-nom>` ; les dossiers commençant par un point peuvent être masqués (Explorateur → Affichage → Afficher → Éléments masqués).

### Exemples de requêtes

- « Crée les personas de ma marque à partir de ces avis clients et de ces notes d'entretien. »
- « Cartographie le parcours de réachat de la persona P1 et identifie les moments de vérité. »
- « À partir des personas et du parcours, construis un plan CRM sur 90 jours. »
- « Audite cette fiche produit : [URL ou texte collé]. »
- « Fais l'analyse concurrentielle de ma marque face à ces trois concurrents. »
- « Prépare-moi à la certification HubSpot Inbound en deux semaines. »
- « Montre-moi l'exemple Maison Verveine du skill persona. »

**Astuce** : plus vous fournissez de matière réelle (avis, verbatims, chiffres, entretiens), plus les livrables sont solides. Chaque affirmation y est reliée à sa source et à un niveau de confiance. Pour analyser un gros volume d'avis en amont, voir le projet compagnon [voc-skill](https://github.com/custovox/voc-skill).

### Structure du dépôt

```
skills-marketing-fr/
├── .claude-plugin/        # plugin.json + marketplace.json (installation Claude Code)
├── skills/
│   ├── persona/           # chaque skill : SKILL.md (méthode + questions de cadrage)
│   │   ├── references/    #   méthode détaillée, sources, exemple Maison Verveine complet
│   │   └── assets/        #   modèle de livrable à remplir
│   ├── parcours-client/
│   ├── plan-crm/
│   ├── audit-fiche-produit/
│   ├── analyse-concurrentielle/
│   └── prepa-certification-hubspot/
├── examples/              # brief de la marque fictive Maison Verveine
├── install/               # scripts d'installation Windows / macOS / Linux
└── docs/images/           # captures et GIF de démonstration
```

### Avertissements

- Maison Verveine, ses concurrents (Florisane, Clairvel Dermo, Vrac Botanique), ses clients et ses chiffres sont **entièrement fictifs**.
- `prepa-certification-hubspot` est un support **indépendant**, sans lien avec HubSpot, et ne reproduit aucun contenu officiel ni question d'examen. HubSpot est une marque de son propriétaire.
- Les livrables produits par l'agent sont des propositions à valider, en particulier les sections juridiques (RGPD, allégations cosmétiques).

### Contribuer

Les contributions sont bienvenues : nouveaux skills (brief créatif, plan média, étude de marché…), exemples sectoriels (B2B, SaaS, tourisme), traductions, corrections. Voir [CONTRIBUTING.md](CONTRIBUTING.md).

### Licence

[MIT](LICENSE) © 2026 CustoVox.ai.

---

## English

**Six chained marketing skills (personas → customer journey → CRM plan, plus product page audit, competitive analysis and HubSpot certification prep) that get your AI agent to produce professional, evidence-based deliverables ready to present.**

<p align="center"><img src="docs/images/demo.gif" alt="Demo: from personas to a CRM plan" width="760"></p>

### The 6 skills

| Skill | What you get | Grounded in |
|---|---|---|
| [`persona`](skills/persona/SKILL.md) | 2-4 evidence-based personas with confidence levels, jobs to be done and a negative persona | Cooper; Pruitt & Grudin; Christensen et al. |
| [`parcours-client`](skills/parcours-client/SKILL.md) (customer journey) | Journey map (Mermaid), moments of truth, pain points, prioritised opportunities | Lemon & Verhoef; Bitner; Kahneman (peak-end) |
| [`plan-crm`](skills/plan-crm/SKILL.md) (CRM plan) | Segmentation, automated scenarios, calendar, KPIs, GDPR section, 30/60/90-day roadmap | Payne & Frow; Fader et al.; Reinartz & Kumar |
| [`audit-fiche-produit`](skills/audit-fiche-produit/SKILL.md) (product page audit) | 30-criterion audit scored out of 100, claims compliance, prioritised fixes | Regulation (EU) 655/2013; Chevalier & Mayzlin |
| [`analyse-concurrentielle`](skills/analyse-concurrentielle/SKILL.md) (competitive analysis) | Sourced comparison grid, positioning map, value curve, positioning statement | Bergen & Peteraf; Porter; Kim & Mauborgne |
| [`prepa-certification-hubspot`](skills/prepa-certification-hubspot/SKILL.md) (HubSpot cert prep) | Study plan, revision sheets, original quizzes, case study (independent, unofficial) | Roediger & Karpicke (testing effect) |

**Chaining**: each skill saves its deliverable in `marketing-deliverables/` and the next skill reuses it automatically. **Worked examples**: every skill ships a full example on the fictional natural-cosmetics brand **Maison Verveine** ([brief](examples/maison-verveine.md)). **Language**: instructions are in English; **deliverables come out in your language**.

### Step-by-step installation

No server, no API key, no dependency: just folders of text.

- **Claude Code (easiest)**:
  ```
  /plugin marketplace add custovox/skills-marketing-fr
  /plugin install skills-marketing-fr@custovox-marketing
  ```
  Restart Claude Code.
- **Installer script (Claude Code, Codex, Cursor)**: download the repository (**Code → Download ZIP**), unzip it, then run `powershell -ExecutionPolicy Bypass -File install\install.ps1` (Windows) or `bash install/install.sh` (macOS/Linux). The skills are copied to `~/.claude/skills` and `~/.agents/skills`.
- **Manual copy**: copy the folders you want from `skills/` to `~/.claude/skills/` (Claude Code), `~/.agents/skills/` (Codex, Cursor) or the project-level `.claude/skills/`, `.agents/skills/`, `.cursor/skills/`.

### Example prompts

- "Build personas for my brand from these customer reviews and interview notes."
- "Map the repurchase journey of persona P1 and find the moments of truth."
- "Using the personas and the journey, build a 90-day CRM plan."
- "Audit this product page: [URL or pasted text]."
- "Run a competitive analysis of my brand against these three competitors."
- "Get me ready for the HubSpot Inbound certification in two weeks."

Tip: the more real material you provide (reviews, verbatims, figures, interviews), the stronger the deliverables; every claim is linked to its source and a confidence level. To analyse large volumes of reviews first, see the companion project [voc-skill](https://github.com/custovox/voc-skill).

### Repository structure

See the tree in the French section: plugin manifests, one folder per skill (`SKILL.md`, `references/` with method, sources and the full Maison Verveine example, `assets/` with the deliverable template), the fictional brief, installers.

### Disclaimers

Maison Verveine, its competitors, customers and figures are **entirely fictional**. `prepa-certification-hubspot` is an **independent** study aid, not affiliated with HubSpot, and reproduces no official content or exam question. Deliverables are proposals to review, especially legal sections (GDPR, cosmetic claims).

### Contributing

Contributions are welcome: new skills (creative brief, media plan, market research…), sector examples (B2B, SaaS, tourism), translations, fixes. See [CONTRIBUTING.md](CONTRIBUTING.md).

### License

[MIT](LICENSE) © 2026 CustoVox.ai.
