# Contribuer · Contributing

**[Français](#français) · [English](#english)**

## Français

Merci de votre intérêt ! Toutes les contributions sont bienvenues : nouveau skill, exemple sectoriel, traduction, correction.

### Ce qu'un skill doit contenir

```
skills/<nom-du-skill>/
├── SKILL.md                         # en-tête name + description, méthode, questions de cadrage, étapes, checklist
├── references/method.md             # méthode détaillée et références complètes (auteur, année, titre, DOI si possible)
├── references/example-maison-verveine.md   # exemple complet sur la marque fictive
└── assets/<modèle>.md               # modèle de livrable à remplir
```

- `name` : minuscules et tirets, identique au nom du dossier.
- `description` : 1 024 caractères maximum ; elle dit **quoi** et **quand** utiliser le skill.
- `SKILL.md` : moins de 500 lignes ; les détails vont dans `references/`.
- Instructions en anglais ; livrables produits dans la langue de l'utilisateur.
- Le livrable est enregistré dans `marketing-deliverables/` pour pouvoir être repris par les autres skills.

### Règles

1. **Aucune donnée réelle** : ni client, ni marque, ni chiffre réels dans les exemples. Utilisez Maison Verveine ([brief](examples/maison-verveine.md)) ou une autre marque fictive, en vérifiant que le nom n'existe pas.
2. **Aucun contenu protégé** : pas de copie de livres, de cours, de supports de certification ni de questions d'examen. Résumez avec vos mots et citez la source.
3. **Méthodes sourcées** : chaque cadre cité a une référence vérifiable.

### Proposer une modification

1. Ouvrez une *issue* pour décrire le besoin (sauf pour les corrections évidentes).
2. Créez une branche et faites vos modifications.
3. Vérifiez : `claude plugin validate .` (si Claude Code est installé), puis testez le skill sur l'exemple Maison Verveine.
4. Ouvrez une *pull request* qui explique **quoi** et **pourquoi**, avec un extrait du livrable obtenu.

## English

Thanks for your interest! New skills, sector examples, translations and fixes are all welcome.

**A skill contains** `SKILL.md` (frontmatter `name` matching the folder and a `description` of at most 1,024 characters saying what and when; method, framing questions, steps, checklist; under 500 lines), `references/method.md` (detailed method and full references), `references/example-maison-verveine.md` (complete worked example) and `assets/<template>.md` (deliverable template). Instructions in English, deliverables in the user's language, saved in `marketing-deliverables/`.

**Rules**: no real data (use Maison Verveine or another fictional brand, checking the name does not exist); no copyrighted content (no copied books, courses, certification material or exam questions); every framework has a verifiable reference.

**Pull requests**: open an issue first for non-trivial changes, run `claude plugin validate .`, test the skill on the Maison Verveine example, and explain what and why with an excerpt of the deliverable.
