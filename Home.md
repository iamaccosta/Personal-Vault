---
tags: [home, dashboard]
---

# 🏠 Home

> Vault pessoal. Seis pilares, todos ativos. **Objetivo principal de 2026: ir viver com ela.**

`📥` [[00 - Inbox]] · `🎯` [[2026]] · `🔄` [[Routines]] · `📚` [[06 - Library/README|Biblioteca]]

---

## 🏛 Os seis pilares

| Pilar | Cobre | Elo mais fraco |
|---|---|---|
| 🏋️ [[Body]] | treino, cardio, 5 refeições, 3 L água, 77 kg | peso atual não registado; sem plano alimentar; sem horário de treino |
| 🧠 [[Mind]] | alemão, leitura, cursos | streak ≠ nível; leitura sem horário |
| 🔨 [[Craft]] | AquaOS, iamaccosta.dev, serviços, 15 h/semana | horas registadas ≠ entregue |
| 💰 [[Capital]] | 10.000 € faturados, 15.000 € poupados | indicador atrasado — só se move quando o [[Craft]] entrega |
| 🤝 [[People]] | ela, LinkedIn, publicações | flores 2/12 — alvo inatingível; publicações 2/10 |
| 🔋 [[Recharge]] | amigos, ela, lazer a solo, sono | *em observação* — alvos construídos a partir de dados, não assumidos |

---

## 🔴 O ativo de maior alavancagem

> **AquaOS.** Em desenvolvimento com o Cliente Zero.

É o único ativo com preço definido (3.000 €/ano). A ~3 clientes ≈ 9.000 € — o que fecha quase toda a lacuna de 9.800 € em [[Capital]], que é o que financia ir viver juntos.

O trabalho atual é **desenvolvimento com o Cliente Zero**, não administração. Abrir atividade para faturar é um passo posterior — necessário eventualmente, mas não tão cedo, e **não é um bloqueio**. Regista o que *moveu*, não as horas.

---

## 📅 Hoje

```dataview
TABLE WITHOUT ID
  file.link AS Dia, duolingo_min AS "Duo", pages_read AS "Págs",
  craft_hours AS "Craft h", choice(trained, "✅", "—") AS "Ginásio", mood AS "Humor"
FROM "04 - Journal/Daily"
SORT date DESC
LIMIT 7
```

**Abrir o dia** → nova nota em `04 - Journal/Daily` a partir de [[Daily Note]]
**Fechar o dia** → secção de journaling da mesma nota

---

## 🔨 Projetos

```dataview
TABLE status, url, last_worked
FROM "02 - Projects"
WHERE type = "project"
SORT status ASC
```

## 💼 Serviços

```dataview
TABLE client, status, fee
FROM "03 - Services"
WHERE type = "service"
```

---

## 📊 2026 num relance

| | Alvo | Agora | |
|---|---|---|---|
| Faturado | 10.000 € | 200 € | 🔴 2% |
| Poupado | 15.000 € | 5.648 € | 🟡 38% |
| Serviços | 5 | 1 | 🔴 |
| Cursos | 6 | 1 | 🔴 |
| Livros | 6 | 3 | 🟡 |
| LinkedIn | 4.000 | 3.323 | 🟢 83% |
| Publicações | 10 | 2 | 🔴 |
| Streak Duolingo | 700 | 555 | 🟡 5 dias de folga |
| 🌹 Flores | 12 | 2 | ⚫ inatingível |

Detalhe completo → [[2026]]

---

## 🔁 Ritmo

| Quando | O quê |
|---|---|
| **Todas as manhãs** | Abertura — planear o dia, nomear a única coisa |
| **Todas as noites** | Journaling — registar o que aconteceu, não intenções |
| **Sexta** | [[Weekly Review]] — varrimento dos pilares, inbox a zero, atualizações INESC TEC |
| **Fim do mês** | [[Monthly Review]] — 🌹 flores, atualizar [[2026]] |
