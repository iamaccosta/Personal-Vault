---
description: Fechar o dia — verificar o registo, apontar falhas, commit e push
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(date:*), Bash(git:*)
---

# Fechar o dia

Os dados do dia já estão na nota — ele registou-os pelo form do BEACON ao longo do dia. **Não peças valores. Não perguntes o humor nem o descanso.** O teu trabalho é verificar o que ficou registado, dizer-lhe o que faltou e o que falhou, e fazer commit + push.

## 1. Data e nota

Corre `date +%Y-%m-%d`. Ficheiro: `04 - Journal/Daily/YYYY-MM-DD.md`. Lê-a — normalmente já existe, aberta no `/abrir` e preenchida ao longo do dia. Se por acaso não existir, cria-a a partir de `99 - Templates/Daily Note.md` e nota que o dia não foi registado.

## 2. Verificar o que fez

Lê o frontmatter e a secção `## 📝 Registo`. Confere os valores contra os alvos diários/semanais (`05 - Goals/Routines.md`). Se ajudar a leitura, completa a secção Fecho a partir **dos números que já lá estão** — resumo mecânico, sem inventar sentimentos e sem pedir nada. Nunca preenchas um campo com um número que não foi registado.

## 3. O que faltou registar

Diz-lhe, em concreto, que campos ficaram **em branco** e deviam ter valor (ex.: água não registada, refeições vazias, Craft sem horas num dia de trabalho). Distingue:

- **Não registado** — o dado existe mas não entrou no form. É um buraco no registo; ele pode preencher agora.
- **Zero real** — a coisa não aconteceu (ex.: leitura 0). Isso não é um buraco de registo, é um facto do dia — trata-o na secção seguinte.

## 4. O que falhou e não devia

Uma passagem curta, dado o dia (era dia de treino? tinha uma prioridade datada marcada no `/abrir`?):

- Um alvo diário falhado que estava ao alcance.
- Uma prioridade concreta que ele próprio marcou para hoje e ficou por tocar — nomeia-a (não "não move Capital").
- Um padrão de vários dias (ex.: leitura em branco há N dias) — nomeia-o como **problema de gatilho, não de disciplina**, e só **uma vez**.

Credita o que subiu tanto como assinalas o que caiu. Não escolhas por default a coisa negativa: se o dia mostra progresso, essa é a coisa a dizer. Toda a comparação (trajetória, "N dias seguidos", semana vs. semana) **lê-se dos números registados**, nunca da memória.

Se `craft_hours` está alto e `mood`/`enjoyed` está baixo, di-lo — é o alerta de que o sistema está a otimizar output à custa do resto.

## 5. Fechar, commit e push

Põe `status: closed` no frontmatter. Depois:

```
git add -A
git commit -m "journal: YYYY-MM-DD"
git push
```

Se o push falhar, reporta o erro com clareza. Não tentes de novo com `--force`.

## Regras

- Nunca inventes um número. Um branco é honesto; um número inventado corrompe o rollup semanal.
- Não peças humor nem descanso. O Recharge não leva alvos nem pontuação tua.
- Sem inflação de elogios. Se foi um dia fraco, di-lo — mas credita o esforço real primeiro, como facto, sem o "mas" que o apaga.
- Lê o `CLAUDE.md` para o tom.
