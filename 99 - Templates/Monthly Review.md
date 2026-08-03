---
type: monthly
month: "{{date:YYYY-MM}}"
tags: [monthly, review]
---

# {{date:MMMM YYYY}}

## ⚠️ Monthly non-negotiables

- [ ] **Flowers for her** 🌹 — *dinners do NOT substitute flowers*
- [ ] Review [[2026]] objectives — update Current State column
- [ ] Process [[00 - Inbox]] to zero

---

## 📈 2026 objectives — progress this month

| Objective | Target | Was | Now | On track? |
|---|---|---|---|---|
| Invoiced (extra) | 10.000 € | | | |
| Saved | 15.000 € | | | |
| Services delivered | 5 | | | |
| Courses / formações | 6 | | | |
| Books read | 6 | | | |
| LinkedIn connections | 4.000 | | | |
| LinkedIn posts | 10 | | | |
| Duolingo streak | 700 | | | |
| Duolingo — A2 complete | — | | | |
| Weight | 77 kg / 15% BF | | | |
| Flowers | 12 | | | |
| Work presence (INESC TEC) | 7 items | | | |

---

## 🏛 Pillar month in review

| Pillar | Trend | Note |
|---|---|---|
| [[Body]] | ↗ ↔ ↘ | |
| [[Mind]] | | |
| [[Craft]] | | |
| [[Capital]] | | |
| [[People]] | | |
| [[Recharge]] | | |

---

## 🧮 Month totals

```dataview
TABLE WITHOUT ID
  sum(rows.duolingo_min) AS "Duo min",
  sum(rows.pages_read) AS "Pages",
  sum(rows.craft_hours) AS "Craft h",
  sum(rows.linkedin_connections) AS "LinkedIn",
  length(filter(rows, (r) => r.trained)) AS "Trainings",
  length(filter(rows, (r) => r.cardio)) AS "Cardio",
  round(average(rows.mood), 1) AS "Avg mood",
  round(average(rows.enjoyed), 1) AS "Avg present"
FROM "04 - Journal/Daily"
WHERE startswith(string(date), this.month)
GROUP BY true
```

---

## 🪞 Introspection

**What worked, and why it worked (the mechanism):**

**What failed, and the mechanism that was missing:**

**What I'm changing structurally next month** — not "try harder":

**Am I still on track for the 2026 main goal (moving in together)?**
> 
