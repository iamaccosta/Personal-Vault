---
description: Análise semanal — médias e totais da semana + trajetória vs semana anterior
allowed-tools: Read, Glob, Grep, Bash(date:*)
---

# Análise semanal

O André pede o global da semana. A resposta tem: o teu parecer em factos, **médias/dia** dos objetivos diários, **totais** semanais, e a **trajetória vs a semana anterior**. É **read-only** — não escreves a Weekly Review nem fazes commit.

## 1. Semana e dias decorridos

Corre `date +%G-W%V` (→ ex. `2026-W33`), `date +%u` (1=Seg…7=Dom = dias decorridos na semana em curso) e `date +%Y-%m-%d`.

Se `$ARGUMENTS` trouxer uma semana passada (ex.: `2026-W32`), analisa essa — semana completa, denominador **7**. Sem argumento, usa a semana atual.

## 2. Ler os dados

- Todas as notas `04 - Journal/Daily/*.md` com `week:` = semana-alvo (grep do frontmatter).
- A **semana anterior** também — para a trajetória.
- `CLAUDE.md` — o tom.

Campos: `duolingo_min`, `pages_read`, `meals`, `water_l`, `trained`, `cardio`, `craft_hours`, `linkedin_connections`, `mood`, `enjoyed`.

## 3. Denominador das médias

**Dias decorridos**, não 7, para a semana em curso (quinta → 4). Semana passada/completa → 7. Um dia **sem nota conta como 0** (a nota é a camada de persistência — não registado = não aconteceu). Di-lo no output se houver dias em falta.

## 4. Parecer do mentor

Forma do `CLAUDE.md` (secção "Creditar em factos, não em sentimentos"):

- Credita o real primeiro, em **médias e totais concretos**.
- **Trajetória vs a semana anterior** — esta média vs a de W-1, em números (subiu/desceu). Creditar o que subiu conta tanto como assinalar o que caiu.
- **Uma alavanca upstream** concreta para a semana (não "faz mais" — a causa mecânica).
- Liga ao objetivo do ano (ir viver com ela) só se mecanicamente relevante. Sem emoção, sem "mas" que apaga o crédito, sem enchimento. Se a média é 40% do alvo, di-lo; se 91%, di-lo.

## 5. Tabela 1 — Objetivos diários (médias da semana)

Colunas: `Objetivo | Alvo/dia | Média/dia | Total | Estado`. Média/dia = soma ÷ dias decorridos; Total = soma bruta.

| Objetivo | Alvo/dia | Meta total |
|---|---|---|
| Duolingo | 30 min | 210 min |
| Leitura | 15 páginas | 105 |
| Refeições | 5 | 35 |
| Água | 3 L | 21 L |
| LinkedIn | 10 ligações | 70 |

(A "Meta total" é a referência da semana completa — 7 dias. Numa semana em curso, o alvo pró-rata dos dias decorridos é o que interessa para o Estado.)

## 6. Tabela 2 — Objetivos semanais (totais)

Colunas: `Objetivo | Meta | Real | Estado`.

| Objetivo | Meta |
|---|---|
| Treinos (Seg PULL · Qua LEGS · Sex PUSH) | 3 |
| Exercício extra fora de casa (Sáb: corrida ou voleibol) | 1 |
| Craft — produtividade | 15 h |

- Treinos = soma de `trained: true` → x/3. Cardio = `cardio: true` → x/1.
- Craft = soma de `craft_hours` → Xh/15h, **e** vs o esperado-até-agora pelo mapa cumulativo (Seg 1h · Ter 2h · Qua 3h · Qui 4h · Sex 5h · Sáb 10h · Dom 15h) — para dizer se está no ritmo, já que as 15h são ponderadas ao fim de semana.

## 7. Humor & presença

Média de `mood` (1–5) e de `enjoyed` (1–5) da semana, com a trajetória vs W-1. O **Recharge não tem alvo** — regista a média, nunca "só descansaste X".

## Regras

- **Excluir das tabelas de ritmo** a gestão financeira (Capital, indicador atrasado, sem quota semanal) e as flores (mensal/People).
- O **ano (2026) não entra** — é um comando à parte.
- Craft por **total + ritmo cumulativo**, nunca média/dia (é ponderado ao fim de semana).
- **Read-only**: não escreves a Weekly Review, não pões nada em disco, não fazes commit.
- Recharge sem alvos. Nunca aconselhes sobre o ritmo de perda de peso. Lê o `CLAUDE.md` para o tom.
