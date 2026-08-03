---
type: pillar
pillar: Craft
tags: [pillar]
---

# 🔨 Craft

> Personal projects and paid services. The engine that drives [[Capital]] — nothing gets invoiced that isn't built here first.

## 🎯 Targets

### Weekly
| Target | Amount |
|---|---|
| Productivity hours | 15 h (everything not already slotted elsewhere) |

### 2026
| Target | Goal | Current |
|---|---|---|
| Web page built & published | — | ✅ iamaccosta.dev |
| Services delivered | 5 | 1 |

---

## ⚙️ Mechanism

- **Trigger:** varies — the 15 h are not distributed across fixed slots.
- **Counter:** `craft_hours` in the daily note; project status in [[Home|Projects]].
- **Known failure mode:** hours logged without shipping. 15 h/week of activity on a project that never reaches a paying client produces zero Capital. Track **what moved**, not only hours.

---

## 🗂 Projects

```dataview
TABLE status, last_worked, url
FROM "02 - Projects"
WHERE type = "project"
SORT status ASC, last_worked DESC
```

| Project | Status | Note |
|---|---|---|
| [[AquaOS]] | 🟢 active | CRM for pool companies. Deployed, client zero testing. **Only real revenue path.** |
| [[iamaccosta.dev]] | 🔵 stable | Published, nothing pending. |
| [[Onefolio Engine]] | ⏸ paused | Shelved — saturated market. |

## 💼 Services

```dataview
TABLE client, status, fee
FROM "03 - Services"
WHERE type = "service"
SORT started DESC
```

One service delivered so far (Excel-based, not documented).

---

## 📊 Current state (Aug 2026)

AquaOS has been in development since May and is the highest-leverage thing in the entire vault — it is the only asset with a defined price (€3.000/year) and therefore the only one that can close the €10.000 gap. It is blocked on an **administrative** item, not a technical one.

## 🪞 Notes

Claude Code is the tool of choice for development work on these projects.
