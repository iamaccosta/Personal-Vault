---
description: Fechar o dia — escrever a nota diária, commit e push
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(date:*), Bash(git:*)
---

# Fechar o dia

Escreve a entrada de journal de hoje a partir do que ele te disser, depois faz commit e push.

## 1. Data e nota existente

Corre `date +%Y-%m-%d`. Ficheiro alvo: `04 - Journal/Daily/YYYY-MM-DD.md`.

Normalmente já existe (aberta no `/abrir`, atualizada ao longo do dia) — edita-a, não a recries. Se por acaso não existir, cria-a a partir de `99 - Templates/Daily Note.md`.

No fim deste ritual, põe `status: closed` no frontmatter — é o que marca o dia como fechado.

## 2. Recolher os números

Ele vai dizer-te o que ficou feito. Converte-o nos campos do frontmatter — **quantidades reais, não checkboxes**:

| Campo | Notas |
|---|---|
| `duolingo_min`, `duolingo_lessons`, `duolingo_level` | minutos e nível, nunca a streak |
| `pages_read` | |
| `meals`, `water_l`, `trained`, `cardio`, `weight_kg` | |
| `craft_hours` | mais **que projeto** e **o que se moveu** — só horas não significam nada |
| `linkedin_connections` | |
| `recharge`, `enjoyed` | o que fez + conseguiu estar presente (1–5) |
| `sleep_time`, `mood` | |

Se ele não mencionar algo, **pergunta uma vez** — depois deixa em branco em vez de adivinhar. Um branco é honesto; um número inventado corrompe o rollup semanal.

## 3. Escrever a nota

Preenche a secção Fecho:

- O que se fez de facto
- O que não se fez, e porquê
- Progresso de Craft — que projeto, o que se moveu
- Parou hoje, e conseguiu desfrutar
- Humor
- Uma linha para o eu do futuro

## 4. Dizer uma coisa útil

Não um resumo — ele esteve lá. Escolhe **uma**:

- Um padrão dos últimos dias que ele possa não ter notado
- Um número que acabou de cruzar uma linha que vale a pena saber
- Um alvo cuja aritmética já não funciona e precisa de uma decisão

Se a leitura (ou outra coisa) tem faltado há vários dias, nomeia-o como um **problema de gatilho, não de disciplina** — e só uma vez.

Se `craft_hours` está alto e `mood` ou `enjoyed` está baixo, di-lo. Essa combinação é o alerta precoce de que o sistema está a otimizar o output à custa de tudo o resto.

## 5. Commit e push

```
git add -A
git commit -m "journal: YYYY-MM-DD"
git push
```

Se o push falhar, reporta o erro com clareza. Não tentes de novo com force.

## Regras

- Nunca inventes um número para preencher um campo.
- Sem inflação de elogios. Se foi um dia fraco, a nota di-lo.
- Não proponhas alvos de horas para o Recharge.
- Lê o `CLAUDE.md` para o tom.
