#!/usr/bin/env bash
# skills-marketing-fr installer for macOS and Linux
# Usage, from the downloaded folder:   bash install/install.sh
#
# Copies the 6 skills to:
#   ~/.claude/skills   (Claude Code)
#   ~/.agents/skills   (Codex, Cursor)
# Nothing else is installed: these skills need no server and no API key.
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

printf "\n== skills-marketing-fr - installation ==\n\n"

for base in "$HOME/.claude/skills" "$HOME/.agents/skills"; do
  mkdir -p "$base"
  for skill in "$REPO"/skills/*/; do
    name="$(basename "$skill")"
    rm -rf "${base:?}/$name"          # replace any previous version
    cp -R "$skill" "$base/$name"
  done
  echo "Skills copied to $base"
done

cat <<EOF

Done. Restart your agent, then try:
  "Use the persona skill to build personas for my brand"
Installed skills: persona, parcours-client, plan-crm, audit-fiche-produit,
prepa-certification-hubspot, analyse-concurrentielle
EOF
