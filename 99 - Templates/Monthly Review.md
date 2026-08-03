---
type: monthly
month: "{{date:YYYY-MM}}"
tags: [monthly, review]
---

# {{date:MMMM YYYY}}

## ⚠️ Não negociáveis do mês

- [ ] **Flores para ela** 🌹 — *jantares NÃO substituem flores*
- [ ] Rever os objetivos de [[2026]] — atualizar a coluna Estado Atual
- [ ] Processar a [[00 - Inbox]] até zero

---

## 📈 Objetivos 2026 — progresso este mês

| Objetivo | Alvo | Antes | Agora | No caminho? |
|---|---|---|---|---|
| Faturado (extra) | 10.000 € | | | |
| Poupado | 15.000 € | | | |
| Serviços entregues | 5 | | | |
| Cursos / formações | 6 | | | |
| Livros lidos | 6 | | | |
| Ligações no LinkedIn | 4.000 | | | |
| Publicações no LinkedIn | 10 | | | |
| Streak Duolingo | 700 | | | |
| Duolingo — A2 completo | — | | | |
| Peso | 77 kg / 15% MG | | | |
| Flores | 12 | | | |
| Presença no trabalho (INESC TEC) | 7 itens | | | |

---

## 🏛 O mês dos pilares em revisão

| Pilar | Tendência | Nota |
|---|---|---|
| [[Body]] | ↗ ↔ ↘ | |
| [[Mind]] | | |
| [[Craft]] | | |
| [[Capital]] | | |
| [[People]] | | |
| [[Recharge]] | | |

---

## 🧮 Totais do mês

```dataview
TABLE WITHOUT ID
  sum(rows.duolingo_min) AS "Duo min",
  sum(rows.pages_read) AS "Págs",
  sum(rows.craft_hours) AS "Craft h",
  sum(rows.linkedin_connections) AS "LinkedIn",
  length(filter(rows, (r) => r.trained)) AS "Treinos",
  length(filter(rows, (r) => r.cardio)) AS "Cardio",
  round(average(rows.mood), 1) AS "Humor médio",
  round(average(rows.enjoyed), 1) AS "Presença média"
FROM "04 - Journal/Daily"
WHERE startswith(string(date), this.month)
GROUP BY true
```

---

## 🪞 Introspeção

**O que funcionou, e porque funcionou (o mecanismo):**

**O que falhou, e o mecanismo que faltava:**

**O que vou mudar estruturalmente no próximo mês** — não "esforçar-me mais":

**Continuo no caminho para o objetivo principal de 2026 (ir viver juntos)?**
> 
