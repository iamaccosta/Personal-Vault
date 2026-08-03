---
description: Abrir o dia — ler o estado, dar direção
allowed-tools: Read, Glob, Grep, Bash(date:*), Bash(git log:*)
---

# Abrir o dia

O utilizador está a começar uma sessão de trabalho. Dá-lhe direção, não um relatório.

## 1. Estabelecer a data

Corre `date +%Y-%m-%d` e `date +%A`. Calcula os dias restantes no ano — não reutilizes um número do vault.

## 2. Ler o estado

- `05 - Goals/2026.md` — alvos do ano e números atuais
- `05 - Goals/Routines.md` — alvos diários/semanais
- A nota de hoje em `04 - Journal/Daily/YYYY-MM-DD.md` se existir
- As **últimas 5 notas diárias** — é isto que te diz o que está de facto a acontecer, versus o que é aspiracional
- Qualquer nota de pilar relevante para o que está atrasado

## 3. Pergunta-lhe duas coisas

Limita a duas. Não interrogues.

1. **O que já fizeste hoje?**
2. **Quanto tempo tens, e para quê?**

Se ele já respondeu a isto na mensagem, salta as perguntas e vai direto à direção.

## 4. Dar direção

Output nesta forma, e mantém-no curto:

**Onde estás** — 2–4 linhas. Só o que é relevante para a decisão de hoje. Não um dump de estado completo.

**Hoje, por ordem** — uma lista ordenada curta. Cada item ligado a um custo de tempo real:

- `15 min` — leitura, 15 páginas (4 dias sem ela agora)
- `~2 h` — AquaOS: fechar o feedback do cliente zero
- `5 min` — registar o peso, o Body está bloqueado nisso

**A única coisa que mais importa hoje** — uma única linha.

**Se só tiveres 15 minutos** — a pequena ação de maior valor disponível.

## Regras

- Sequencia por alavancagem, não pelo que é mais fácil de riscar.
- Se um bloqueio tem estado por tocar, põe-no primeiro — mas di-lo **uma vez**, sem o reargumentar.
- Não listes os seis pilares. Menciona o que é relevante para a decisão agora.
- Sem preâmbulo. Sem "aqui está o teu briefing diário". Começa pela substância.
- Se ele está prestes a começar uma sessão longa de Craft e algo pequeno e bloqueante está por resolver, di-lo antes de ele abrir o editor — é o momento em que é barato de resolver.
- Lê o `CLAUDE.md` para tom e regras rígidas. Em especial: **o Recharge não leva alvos de horas**, e nunca aconselhes sobre o ritmo de perda de peso.
