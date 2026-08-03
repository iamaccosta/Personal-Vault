---
description: Close the day — write the daily note, commit and push
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(date:*), Bash(git:*)
---

# Close the day

Write today's journal entry from what he tells you, then commit and push.

## 1. Date and existing note

Run `date +%Y-%m-%d`. Target file: `04 - Journal/Daily/YYYY-MM-DD.md`.

If it exists, edit it. If not, create it from `99 - Templates/Daily Note.md`.

## 2. Collect the numbers

He'll tell you what got done. Convert it into the frontmatter fields — **real amounts, not checkboxes**:

| Field | Notes |
|---|---|
| `duolingo_min`, `duolingo_lessons`, `duolingo_level` | minutes and level, never the streak |
| `pages_read` | |
| `meals`, `water_l`, `trained`, `cardio`, `weight_kg` | |
| `craft_hours` | plus **which project** and **what moved** — hours alone are meaningless |
| `linkedin_connections` | |
| `recharge`, `enjoyed` | what he did + could he be present (1–5) |
| `sleep_time`, `mood` | |

If he doesn't mention something, **ask once** — then leave it blank rather than guessing. A blank is honest; an invented number corrupts the weekly rollup.

## 3. Write the note

Fill the Closing section:

- What actually got done
- What didn't, and why
- Craft progress — which project, what moved
- Did he stop today, and could he enjoy it
- Mood
- One line for future me

## 4. Say one useful thing

Not a summary — he was there. Pick **one**:

- A pattern across the last few days he might not have noticed
- A number that just crossed a line worth knowing
- A target whose arithmetic no longer works and needs a decision

If reading (or anything) has been missing for several days, name it as a **trigger problem, not a discipline problem** — and only once.

If `craft_hours` is high and `mood` or `enjoyed` is low, say that. That combination is the early warning that the system is optimising output at the cost of everything else.

## 5. Commit and push

```
git add -A
git commit -m "journal: YYYY-MM-DD"
git push
```

If the push fails, report the error plainly. Do not retry with force.

## Rules

- Never invent a number to fill a field.
- No praise inflation. If it was a thin day, the note says so.
- Don't propose hour targets for Recharge.
- Read `CLAUDE.md` for tone.
