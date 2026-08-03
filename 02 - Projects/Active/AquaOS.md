---
type: project
title: AquaOS
status: active
pillar: Craft
started: 2026-05
last_worked: 2026-08
stack: []
repo: git@github.com:iamaccosta/AquaOS.git
local: /home/iamaccosta/projects/pool-as-a-service
url: https://aquaos.pt
monetisable: true
revenue_model: subscrição anual — 3.000 €/cliente
tags: [project, aquaos]
---

# AquaOS

> Plataforma CRM para empresas de piscinas. Em produção e em testes com o cliente zero.

| | |
|---|---|
| **Estado** | 🟢 dev ativo — validação com cliente zero em pausa, rumo ao launch público |
| **Online em** | aquaos.pt |
| **Início** | maio 2026 |
| **Modelo de receita** | 3.000 € / ano por cliente |

⚠️ **Não consta dos objetivos originais de [[2026]]** — surgiu como ideia em maio. É agora o ativo mais importante do vault, porque é o único que pode fechar a lacuna de faturação de 9.800 €.

---

## 💻 Ambiente de desenvolvimento

| | |
|---|---|
| **Código local** | `/home/iamaccosta/projects/pool-as-a-service` |
| **Repositório** | `git@github.com:iamaccosta/AquaOS.git` |
| **Online** | aquaos.pt |

> O código **não está neste vault** — este ficheiro é o registo, o código está no caminho acima.
>
> O **Claude Code tem acesso `gh` a este repo**: pode ler e modificar Issues, abrir a board dos Issues, commitar, dar push, abrir PRs e mergeá-los. A gestão de trabalho do AquaOS faz-se pelos **Issues no GitHub** — a lista abaixo é a visão de topo; o detalhe vivo está lá.

---

## 🎯 Definição de "suficientemente feito"

- [ ] Conjunto de Issues "obrigatórios antes do launch" fechados
- [ ] **Launch público** — é isto, não o cliente zero, que abre a porta à receita
- [ ] Primeiros clientes **pagantes** (o cliente zero não é um deles — ver abaixo)
- [ ] Integrar um segundo cliente não exige reconstruir nada

---

## 🚧 Bloqueios

| Bloqueio | Tipo | Responsável | Data | Estado |
|---|---|---|---|---|
| Validação com o cliente zero em pausa (relação pessoal) | externo | — | 2026-08 | em pausa |

> **O cliente zero é a empresa do pai da namorada.** Não paga no 1.º ano — está a validar o *valor* que o software lhe traz, não a gerar receita. A relação não está no melhor momento, por isso a validação está **em pausa**.
>
> Isto **não trava o desenvolvimento** — o André continua a fechar Issues obrigatórios rumo ao launch. O que trava é a *validação*, não o *código*.
>
> Abrir atividade para faturar é passo posterior, para quando houver clientes pagantes. Não é bloqueio ao trabalho atual. → [[Capital]]

---

## 🔨 Próximas ações

> Fonte de verdade: **Issues no GitHub** (`iamaccosta/AquaOS`). 18 fechados · 8 abertos a 2026-08-03. Esta lista é o espelho por prioridade — o detalhe está lá.

### Agora — `priority:high`
- [ ] #37 RGPD: /privacy, /terms e cookie banner *(feature)*
- [ ] #13 [Epic] Stripe billing (subscrições) — **é o fluxo de faturação que fecha a monetização**

### A seguir — `priority:medium`
- [ ] #47 Self-service: eliminar empresa + dados (right-to-erasure)
- [ ] #30 [Epic] Portal do cliente final
- [ ] #29 [Epic] Relatórios em PDF (motor + branding)

### Em curso
- [ ] #39 Landing: secção de funcionalidades com fotos — **feito num branch, ainda não merged na `develop`; não satisfeito com o resultado**

### Um dia — `low` / `chore`
- [ ] #20 Reativar registo público (flip `SIGNUPS_ENABLED`) — passo do launch
- [ ] #45 Folha por cliente: substituir transcrição manual

---

## 💰 Receita

| | |
|---|---|
| **Preço** | 3.000 € / ano |
| **Clientes necessários para contar** | ~3 pagantes ≈ 9.000 € — **todos vindos do launch público** |
| **Clientes pagantes atuais** | 0 — o cliente zero não paga no 1.º ano |
| **A mover a receita** | o **launch público**. Sem launch, 0 € — por mais Issues fechados que sejam |

Três clientes pagantes fecham quase todo o alvo de faturação de 2026. A aritmética não é o problema; **a data do launch é.** Cada Issue fechado antes do launch adia o dia 1 da receita — e o ano tem menos dias a cada semana. Isto não é razão para não desenvolver; é razão para separar *obrigatório antes do launch* de *polimento que pode esperar por clientes reais*.

---

## 🧱 Stack & arquitetura

- *(a preencher — o Claude Code é a ferramenta de dev para isto)*

## 🧠 Decisões & armadilhas

### Estratégia atual: fechar os "obrigatórios antes do launch"
- O plano é limpar os Issues que o André sente serem obrigatórios antes do launch verdadeiro (RGPD, relatórios de intervenção, relatórios de cliente, landing, etc.) e só depois lançar publicamente.
- **Armadilha a vigiar:** "obrigatório antes do launch" é uma lista que se estica. Ele é um overthinker que polL — o risco não é fazer pouco, é adiar o launch a fechar Issues que um cliente real nem notaria. A pergunta a cada Issue: *isto trava mesmo o launch, ou pode fechar depois do primeiro pagante?*

### Cliente zero ≠ receita
- Validação de valor com a empresa do pai da namorada, sem pagamento no 1.º ano. A receita virá de outros clientes, via launch. Não confundir "cliente zero contente" com "AquaOS a faturar".

---

## 📜 Changelog

### 2026-05
- Projeto iniciado a partir de uma ideia

### 2026-07
- Módulo **Agenda** entregue: calendário interativo do operador, modelo de agendamento + CRUD, atribuição pelo owner, estado das visitas (feita/falhada) — Issues #50, #51, #52, #55, #58 fechados

### 2026-08
- Em produção em aquaos.pt, cliente zero em testes
- 18 Issues fechados no total; 8 abertos (2 `high`: RGPD #37, Stripe #13)
