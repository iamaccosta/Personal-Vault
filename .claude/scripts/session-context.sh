#!/usr/bin/env bash
# SessionStart hook — inject today's state so the mentor starts informed.
# Output goes into Claude Code's context. Keep it short and factual.
set -u
cd "$(dirname "$0")/../.." || exit 0

TODAY=$(date +%Y-%m-%d)
DOW=$(date +%A)
YEAR=$(date +%Y)
LEFT=$(( ( $(date -d "$YEAR-12-31" +%s) - $(date +%s) ) / 86400 ))

echo "## Vault state — $DOW $TODAY ($LEFT days left in $YEAR)"
echo

TODAY_NOTE="04 - Journal/Daily/$TODAY.md"
if [ -f "$TODAY_NOTE" ]; then
  echo "### Today's note exists — current frontmatter"
  sed -n '/^---$/,/^---$/p' "$TODAY_NOTE" | grep -vE '^---$|^\s*$|^\s*#' || true
else
  echo "### No note for today yet."
  echo "Nothing has been logged. Ask what's been done before advising."
fi
echo

echo "### Last 5 logged days"
ls -1 "04 - Journal/Daily/" 2>/dev/null | grep -E '^[0-9]{4}-[0-9]{2}-[0-9]{2}\.md$' \
  | sort -r | grep -v "^$TODAY.md$" | head -5 | while read -r f; do
  d="${f%.md}"
  fm=$(sed -n '/^---$/,/^---$/p' "04 - Journal/Daily/$f")
  get() { echo "$fm" | grep -m1 "^$1:" | cut -d: -f2- | tr -d ' ' ; }
  echo "- $d — duo:$(get duolingo_min)m pages:$(get pages_read) craft:$(get craft_hours)h gym:$(get trained) mood:$(get mood) present:$(get enjoyed)"
done
echo

STREAK_GAP=$(ls -1 "04 - Journal/Daily/" 2>/dev/null | grep -cE '^[0-9]{4}-[0-9]{2}-[0-9]{2}\.md$')
echo "### Journal coverage: $STREAK_GAP days logged total"
echo
echo "Read CLAUDE.md for tone and hard rules. Read 05 - Goals/2026.md for year state."
echo "Do NOT advise from this summary alone — it is a starting point, not the full picture."
