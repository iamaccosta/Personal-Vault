---
tags: [home, dashboard]
---

# 🏠 Home

> Personal vault. Six pillars, all active. **Main goal of 2026: move in with her.**

`📥` [[00 - Inbox]] · `🎯` [[2026]] · `🔄` [[Routines]] · `📚` [[06 - Library/README|Library]]

---

## 🏛 The six pillars

| Pillar | Covers | Weakest link |
|---|---|---|
| 🏋️ [[Body]] | training, cardio, 5 meals, 3 L water, 77 kg | current weight not logged; no nutrition plan; no training slot |
| 🧠 [[Mind]] | German, reading, courses | streak ≠ level; reading has no slot |
| 🔨 [[Craft]] | AquaOS, iamaccosta.dev, services, 15 h/week | hours logged ≠ shipped |
| 💰 [[Capital]] | 10.000 € invoiced, 15.000 € saved | **entity not registered** |
| 🤝 [[People]] | her, LinkedIn, posts | flowers 2/12 — target unreachable; posts 2/10 |
| 🔋 [[Recharge]] | friends, her, solo leisure, sleep | *observing* — targets built from data, not assumed |

---

## 🔴 The one thing gating everything

> **Abrir entidade.** No date set.

[[AquaOS]] can't take subscriptions without it. At 3.000 €/year, ~3 clients ≈ 9.000 € — which closes almost the whole 9.800 € gap in [[Capital]], which is what funds moving in together. Not a motivation problem. A shut door.

---

## 📅 Today

```dataview
TABLE WITHOUT ID
  file.link AS Day, duolingo_min AS "Duo", pages_read AS "Pages",
  craft_hours AS "Craft h", choice(trained, "✅", "—") AS "Gym", mood AS "Mood"
FROM "04 - Journal/Daily"
SORT date DESC
LIMIT 7
```

**Opening the day** → new note in `04 - Journal/Daily` from [[Daily Note]]
**Closing the day** → journaling section of the same note

---

## 🔨 Projects

```dataview
TABLE status, url, last_worked
FROM "02 - Projects"
WHERE type = "project"
SORT status ASC
```

## 💼 Services

```dataview
TABLE client, status, fee
FROM "03 - Services"
WHERE type = "service"
```

---

## 📊 2026 at a glance

| | Target | Now | |
|---|---|---|---|
| Invoiced | 10.000 € | 200 € | 🔴 2% |
| Saved | 15.000 € | 5.648 € | 🟡 38% |
| Services | 5 | 1 | 🔴 |
| Courses | 6 | 1 | 🔴 |
| Books | 6 | 2 | 🟡 |
| LinkedIn | 4.000 | 3.323 | 🟢 83% |
| Posts | 10 | 2 | 🔴 |
| Duolingo streak | 700 | 555 | 🟡 5 days slack |
| 🌹 Flowers | 12 | 2 | ⚫ unreachable |

Full detail → [[2026]]

---

## 🔁 Rhythm

| When | What |
|---|---|
| **Every morning** | Opening — plan the day, name the one thing |
| **Every night** | Journaling — log actuals, not intentions |
| **Friday** | [[Weekly Review]] — pillar scan, inbox to zero, INESC TEC updates |
| **Month end** | [[Monthly Review]] — 🌹 flowers, update [[2026]] |
