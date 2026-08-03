---
type: weekly
week: "{{date:gggg-[W]ww}}"
start: "{{date:YYYY-MM-DD}}"
tags: [weekly, review]
---

# Week {{date:gggg-[W]ww}}

## 🎯 Weekly targets vs actual

| Target | Goal | Actual | Hit? |
|---|---|---|---|
| Duolingo — 30 min/day | 210 min | | |
| LinkedIn new connections/day | 70 | | |
| Duolingo — level progress | +1 level | | |
| Reading — 15 pages/day | 105 pages | | |
| Training sessions | 3 | | |
| Cardio / run | 1 | | |
| Meals — 5/day | 35 | | |
| Water — 3L/day | 21 L | | |
| Craft / productivity hours | 15 | | |
| Recharge (observing — no target) | log only | | |

> Auto-rollup (requires Dataview):

```dataview
TABLE WITHOUT ID
  file.link AS Day,
  duolingo_min AS "Duo",
  pages_read AS "Pages",
  meals AS "Meals",
  water_l AS "Water",
  craft_hours AS "Craft h",
  linkedin_connections AS "LI",
  choice(trained, "✅", "—") AS "Gym",
  choice(cardio, "✅", "—") AS "Cardio",
  enjoyed AS "Present"
FROM "04 - Journal/Daily"
WHERE week = this.week
SORT date ASC
```

---

## 🏛 Pillar scan

Rate 1–5. Not "did I feel good" — did it move.

| Pillar | Score | What moved | What stalled |
|---|---|---|---|
| [[Body]] | | | |
| [[Mind]] | | | |
| [[Craft]] | | | |
| [[Capital]] | | | |
| [[People]] | | | |
| [[Recharge]] | | | |

---

## 🔨 Craft — project status

| Project | Status | Moved this week? | Next action |
|---|---|---|---|
| [[AquaOS]] | active | | |
| [[iamaccosta.dev]] | stable | | |
| Services | | | |

---

## 💼 Work (INESC TEC)

> Tracked in the work vault — log headlines here so the 2026 objectives stay visible.

- Conferences / workshops / CSIs / demos progress:
- Formações:

---

## 💰 Capital

Capital is a **lagging indicator** — it moves only when Craft ships. No weekly quota; log reality.

- Invoiced this week: €
- Saved this week: €
- Blockers moved? (e.g. **entidade aberta**):

---

## 🔋 Recharge — observation log

No score. Just what happened and whether you were present.

| Day | What | Present (1–5) | Guilt thought, if any |
|---|---|---|---|
| | | | |

**Pattern noticed this week:**

---

## 🪞 Review

**Biggest win:**

**Biggest miss — and the mechanical cause (not "no motivation"):**

**What I'm carrying into next week:**

**Next week — the one thing:**
> 
