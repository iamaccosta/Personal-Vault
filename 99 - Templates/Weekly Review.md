---
type: weekly
week: "{{date:gggg-[W]ww}}"
start: "{{date:YYYY-MM-DD}}"
tags: [weekly, review]
---

# Semana {{date:gggg-[W]ww}}

## 🎯 Alvos semanais vs real

| Alvo | Meta | Real | Cumprido? |
|---|---|---|---|
| Duolingo — 30 min/dia | 210 min | | |
| Novas ligações LinkedIn/dia | 70 | | |
| Duolingo — progresso de nível | +1 nível | | |
| Leitura — 15 páginas/dia | 105 páginas | | |
| Sessões de treino | 3 | | |
| Cardio / corrida | 1 | | |
| Refeições — 5/dia | 35 | | |
| Água — 3L/dia | 21 L | | |
| Horas de Craft / produtividade | 15 | | |
| Recharge (em observação — sem alvo) | só registar | | |

> Rollup automático (requer Dataview):

```dataview
TABLE WITHOUT ID
  file.link AS Dia,
  duolingo_min AS "Duo",
  pages_read AS "Págs",
  meals AS "Refeições",
  water_l AS "Água",
  craft_hours AS "Craft h",
  linkedin_connections AS "LI",
  choice(trained, "✅", "—") AS "Ginásio",
  choice(cardio, "✅", "—") AS "Cardio",
  enjoyed AS "Presente"
FROM "04 - Journal/Daily"
WHERE week = this.week
SORT date ASC
```

---

## 🏛 Varrimento dos pilares

Avalia 1–5. Não "senti-me bem" — mexeu-se?

| Pilar | Pontuação | O que se moveu | O que ficou parado |
|---|---|---|---|
| [[Body]] | | | |
| [[Mind]] | | | |
| [[Craft]] | | | |
| [[Capital]] | | | |
| [[People]] | | | |
| [[Recharge]] | | | |

---

## 🔨 Craft — estado dos projetos

| Projeto | Estado | Mexeu esta semana? | Próxima ação |
|---|---|---|---|
| [[AquaOS]] | ativo | | |
| [[iamaccosta.dev]] | estável | | |
| Serviços | | | |

---

## 💼 Trabalho (INESC TEC)

> Monitorizado no vault de trabalho — regista os destaques aqui para os objetivos de 2026 se manterem visíveis.

- Progresso de conferências / workshops / CSIs / demos:
- Formações:

---

## 💰 Capital

O Capital é um **indicador atrasado** — só se move quando o Craft entrega. Sem quota semanal; regista a realidade.

- Faturado esta semana: €
- Poupado esta semana: €
- Bloqueios que se moveram? (ex: **entidade aberta**):

---

## 🔋 Recharge — registo de observação

Sem pontuação. Apenas o que aconteceu e se estiveste presente.

| Dia | O quê | Presente (1–5) | Pensamento de culpa, se houve |
|---|---|---|---|
| | | | |

**Padrão notado esta semana:**

---

## 🪞 Revisão

**Maior vitória:**

**Maior falha — e a causa mecânica (não "sem motivação"):**

**O que levo para a próxima semana:**

**Próxima semana — a única coisa:**
> 
