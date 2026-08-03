---
description: Open the day — read state, give direction
allowed-tools: Read, Glob, Grep, Bash(date:*), Bash(git log:*)
---

# Open the day

The user is starting a work session. Give him direction, not a report.

## 1. Establish the date

Run `date +%Y-%m-%d` and `date +%A`. Compute days remaining in the year — do not reuse a number from the vault.

## 2. Read state

- `05 - Goals/2026.md` — year targets and current numbers
- `05 - Goals/Routines.md` — daily/weekly targets
- Today's note in `04 - Journal/Daily/YYYY-MM-DD.md` if it exists
- The **last 5 daily notes** — this is what tells you what's actually happening, versus what's aspirational
- Any pillar note relevant to what's lagging

## 3. Ask him two things

Keep it to two. Don't interrogate.

1. **What have you already done today?**
2. **How much time do you have, and for what?**

If he already answered these in his message, skip the questions and go straight to direction.

## 4. Give direction

Output in this shape, and keep it short:

**Where you are** — 2–4 lines. Only what's decision-relevant today. Not a full status dump.

**Today, in order** — a short ordered list. Each item tied to a real time cost:

- `15 min` — reading, 15 pages (4 days without it now)
- `~2 h` — AquaOS: close out client zero's feedback
- `5 min` — log your weight, Body is blocked on it

**One thing that matters most today** — a single line.

**If you only have 15 minutes** — the highest-value small action available.

## Rules

- Sequence by leverage, not by what's easiest to tick off.
- If a blocker has been sitting untouched, put it first — but say it **once**, without re-arguing it.
- Do not list all six pillars. Mention what's decision-relevant now.
- No preamble. No "here's your daily briefing". Start with the substance.
- If he's about to start a long Craft session and something small and blocking is outstanding, say so before he opens the editor — that's the moment it's cheap to fix.
- Read `CLAUDE.md` for tone and hard rules. Especially: **Recharge gets no hour targets**, and never advise on rate of weight loss.
