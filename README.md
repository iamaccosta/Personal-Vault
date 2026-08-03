# Personal Vault

Obsidian vault for personal life, projects and goals. Work lives in a separate vault.

## How to open

Obsidian → *Open folder as vault* → select this folder.

**Recommended plugin:** Dataview (the dashboards use it). Everything still reads fine without it — the queries just won't render.

Start at **[[Home]]**.

---

## Structure

```
Personal Vault/
├── Home.md                  ← dashboard, start here
├── 00 - Inbox.md            ← unsorted capture, processed weekly
│
├── 01 - Pillars/            ← the 6 life domains (review lens)
│   ├── Body.md              training, food, water, weight
│   ├── Mind.md              German, reading, courses
│   ├── Craft.md             projects + services
│   ├── Capital.md           invoiced + saved
│   ├── People.md            her, LinkedIn, posts
│   └── Recharge.md          friends, her, solo leisure, sleep
│
├── 02 - Projects/           Active | Stable | Paused
├── 03 - Services/           Active | Completed
├── 04 - Journal/            Daily | Weekly | Monthly
├── 05 - Goals/              2026.md · Routines.md
├── 06 - Library/            books — Reading | Finished
├── 07 - Courses/            courses & formações
├── 99 - Templates/          all templates
└── Archive/
```

## Why 6 pillars

Wellbeing frameworks converge on 5–6 domains (physical, mental, social, financial, purpose). The 8-category Wheel of Life is commercial in origin and has little empirical support; PERMA has 5 elements but collapses to roughly one factor when measured. Six gives full coverage of the actual goals with no orphan areas.

Pillars are the **review lens**, not the daily unit of work. All six stay active.

## The design principle

**Amounts, not checkboxes** — with one deliberate exception.

The daily note records numbers in frontmatter (`duolingo_min`, `pages_read`, `craft_hours`…) so Dataview can roll up real weekly and monthly totals.

This is deliberate. A 555-day Duolingo streak coexists with being far short of level 60, because a binary counter rewards showing up rather than progress. Nine of the ten daily/weekly targets currently have no counter and no trigger at all — which is the mechanical explanation for what's on track and what isn't.

The exception is **Recharge**, which is deliberately unquantified. Its failure mode is guilt during leisure, not a shortage of leisure. A quantified target there would become one more number to fail and would feed the guilt it exists to fix. It stays in observation mode until there's enough logged data to say something true.

## Rhythm

| When | What |
|---|---|
| Morning | Opening — plan, name the one thing |
| Night | Journaling — log actuals |
| Friday | Weekly Review — pillar scan, inbox to zero |
| Month end | Monthly Review — flowers, update 2026 |

## Templates

`Daily Note` · `Weekly Review` · `Monthly Review` · `Project` · `Service` · `Book` · `Course` · `Pillar`

Copy from `99 - Templates/`. If you use the Templater or Core Templates plugin, point it at that folder — the `{{date}}` placeholders will then fill automatically.
