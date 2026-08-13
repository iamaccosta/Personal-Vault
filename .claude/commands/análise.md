---
description: Análise do dia — parecer do mentor + tabela diária e tabela semanal
allowed-tools: Read, Edit, Write, Glob, Grep, Bash(date:*)
---

# Análise do dia

O André pede o estado do dia. A resposta tem **duas partes obrigatórias**: o teu parecer em factos, e **duas tabelas** (diária e semanal). Não é `/fechar` — não escreves journaling de fecho nem fazes commit.

## 1. Data, hora e dia da semana

Corre `date +%Y-%m-%d`, `date +%A` e `date +%H:%M`. O **dia da semana** escolhe o alvo cumulativo de Craft (ver mapa na Tabela 1).

## 2. Ler o estado

- Nota de hoje: `04 - Journal/Daily/YYYY-MM-DD.md` — números diários no frontmatter.
- **As notas da semana atual** (mesmo `week:`, de segunda até hoje) — para somar Craft e treinos *week-to-date*.
- `05 - Goals/Routines.md` — os alvos.
- `CLAUDE.md` — o tom.

Se ele reportar quantidades novas na mesma mensagem ("bebi mais 500ml"), **persiste-as primeiro** na nota de hoje (frontmatter + `## 📝 Registo`), como a regra permanente manda. Só depois analisas. O dia continua `open`.

## 3. Parecer do mentor

Na forma que ele pediu no `CLAUDE.md` (secção "Creditar em factos, não em sentimentos"):

- **% do dia atingida** — a partir dos alvos diários resettáveis: Duolingo min/30, páginas/15, refeições/5, água/3L, ligações/10, e **treino se hoje era dia** (Seg/Qua/Sex). O **Craft não entra na %** — avalia-se à parte por ritmo pró-rata.
- Credita o real primeiro, em factos. Depois **uma alavanca upstream** concreta e acionável (não "lê mais" — sim "acordar 30 min mais cedo desbloqueia X e Y").
- Liga ao objetivo do ano (ir viver com ela) **só** se for mecanicamente relevante para uma decisão de agora.
- Sem linguagem emocional, sem "mas" que apaga o crédito, sem enchimento. Se atingiu 40%, diz 40%; se 91%, diz 91%.

## 4. Tabela 1 — Objetivos diários (hoje)

Colunas: `Objetivo | Alvo | Real | Estado`.

| Objetivo | Alvo |
|---|---|
| Duolingo | 30 min |
| Leitura | 15 páginas |
| Refeições | 5 |
| Água | 3 L |
| LinkedIn | 10 ligações |
| Craft (semana até hoje) | *alvo cumulativo do dia* |

**Mapa cumulativo do Craft** — o alvo da linha Craft muda com o dia da semana, sempre "/15h":

| Seg | Ter | Qua | Qui | Sex | Sáb | Dom |
|---|---|---|---|---|---|---|
| 1h | 2h | 3h | 4h | 5h | 10h | 15h |

O **Real** da linha Craft é o **total da semana até hoje** (soma de `craft_hours` de segunda→hoje), não só o de hoje — compara-o com o alvo cumulativo e diz se está à frente ou atrás.

## 5. Tabela 2 — Objetivos semanais

Colunas: `Objetivo | Alvo | Real | Estado`.

| Objetivo | Alvo |
|---|---|
| Treinos (Seg PULL · Qua LEGS · Sex PUSH) | 3 |
| Exercício extra fora de casa (Sáb: corrida ou voleibol) | 1 |
| Craft — produtividade semanal | 15 h |

O **Real** vem da soma da semana: `trained: true` → x/3; `cardio: true` → x/1; soma de `craft_hours` → Xh/15h.

## Regras

- **Excluir da tabela semanal** a gestão financeira (Capital, indicador atrasado, sem quota semanal) e as flores (mensal/People). Não são ritmo semanal.
- O **ano (2026) não entra** numa análise de dia — isso é um comando à parte.
- Craft por **ritmo pró-rata cumulativo**, nunca contra um "5h hoje" inventado.
- Não é `/fechar`: não escreves journaling de fecho, não pões `status: closed`, não fazes commit.
- Recharge sem alvos. Nunca aconselhes sobre o ritmo de perda de peso.
- Lê o `CLAUDE.md` para o tom.
