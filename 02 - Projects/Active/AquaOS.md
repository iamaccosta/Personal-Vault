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

> **Sistema operativo das empresas de manutenção de piscinas** — onde gerem clientes, equipa e o trabalho dos operadores. Em produção. Reposicionado de "CRM para empresas de piscinas" para plataforma de operações a **2026-08-15** (ver Decisões).

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
- [~] #37 RGPD: /privacy, /terms e cookie banner *(feature)* — **código feito (11-08); só falta o texto legal do contabilista/advogado.** Fica aberto por conteúdo, não por dev.
- [ ] #13 [Epic] Stripe billing (subscrições) — **depende de atividade aberta.** É o fluxo de faturação que fecha a monetização.

### A seguir — `priority:medium`
- [x] #47 Self-service: eliminar empresa + dados (right-to-erasure) — **merged e fechado 11-08**
- [ ] #30 [Epic] Portal do cliente final
- [ ] #29 [Epic] Relatórios em PDF (motor + branding)

### Em curso
- [ ] #39 Landing: secção de funcionalidades com fotos — **feito num branch, ainda não merged na `develop`; não satisfeito com o resultado**

### Um dia — `low` / `chore`
- [ ] #20 Reativar registo público (flip `SIGNUPS_ENABLED`) — passo do launch; **depende de atividade aberta**
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

### Reposicionamento (2026-08-15) — de CRM a plataforma de operações
Depois de duas análises de mercado (`Telemetria e software proprietário…` e `analise-potencial-saas-piscinas-portugal`), o foco estava disperso: telemetria por piscina + alertas sem integração resolvida + CRM sem workflow concreto de manutenção. **Novo eixo: o AquaOS é o sistema operativo da empresa de manutenção** — gestão de clientes, equipa e trabalho dos operadores.

**Modelo de dados (correção importante):** três camadas, não uma.
- **Contrato ↔ cliente/local** (embalagem comercial: preço, época, o que inclui). Um contrato pode cobrir várias piscinas — não forçar contrato por piscina (ex.: hotel com 2 piscinas = 1 contrato).
- **Plano de serviço ↔ piscina** (frequência, SLA, checklist, parâmetros). É aqui que piscinas do mesmo cliente divergem.
- **Intervenção + medições ↔ piscina** (execução e prova).

**Segmento-alvo:** empresas com **5–15 técnicos**, dezenas/centenas de piscinas, contratos recorrentes. O profissional individual não é cliente (acha caro/complexo). Canal de validação eventual: **APPP**. Portugal = laboratório; escala real exigirá expansão ibérica/europeia (mercado PT isolado é médio-baixo).

**Diferenciador defensável:** prova de serviço + portal do cliente + fluxo *alerta→intervenção* (funciona mesmo com medição manual). Não ser sensor nem controlador — ficar **acima** da camada de hardware.

**Decisões de âmbito assumidas pelo André (divergem dos documentos, conscientemente):**
- **Web-only, online, sem mobile/offline-first** por agora. Risco conhecido: sala técnica sem sinal não fecha visita no momento — a validar com operadores, não bloqueia o v1.
- **Terminar o v1 antes de vender/entrevistar.** Não vai arranjar novo cliente-zero nem fazer entrevistas sem produto. ⚠️ Só é seguro com fronteira de v1 escrita (abaixo) — senão cai na armadilha do "obrigatório antes do launch" que se estica.

**Fronteira do v1 (definida para "terminar o produto" ter um fim):**
- Dentro: feito atual (CRM, piscinas, equipa, agenda) coerente sob o novo foco · refactor do processo de intervenção (incl. nº de amostragens) · refactor dos alertas (telemetria → **operacionais/preditivos**: intervenções em falta/não agendadas, piscinas a precisar de atenção) · **prova de serviço** (registo + relatório de intervenção) · **portal do cliente** mínimo.
- **Fora do v1 (explícito):** otimização de rotas (Fase 2 — precisa de brainstorm+build grande) · telemetria (módulo premium, pós-v1, plataforma fica *telemetria-ready* mas não dependente).

### Estratégia atual: fechar os "obrigatórios antes do launch"
- O plano é limpar os Issues que o André sente serem obrigatórios antes do launch verdadeiro (RGPD, relatórios de intervenção, relatórios de cliente, landing, etc.) e só depois lançar publicamente.
- **Armadilha a vigiar:** "obrigatório antes do launch" é uma lista que se estica. Ele é um overthinker que polL — o risco não é fazer pouco, é adiar o launch a fechar Issues que um cliente real nem notaria. A pergunta a cada Issue: *isto trava mesmo o launch, ou pode fechar depois do primeiro pagante?*

### Cliente zero ≠ receita
- Validação de valor com a empresa do pai da namorada, sem pagamento no 1.º ano. A receita virá de outros clientes, via launch. Não confundir "cliente zero contente" com "AquaOS a faturar".

---

## 🧾 Abrir atividade — perguntas para o contabilista

> Reunião **confirmada para sexta, 2026-08-14** (marcada via pai). Capturado 2026-08-09, atualizado 2026-08-13.
>
> **Nota:** abrir atividade trava *faturar*, não o *launch* nem as *entrevistas*. Estas perguntas correm em paralelo ao launch — não são bloqueio ao trabalho de produto.

**Estrutura & fiscal (para o contabilista):**
- [ ] **ENI vs Unipessoal Lda.** — qual faz sentido para começar?
- [ ] **Regime de IVA** — qual se aplica?
- [ ] **CAE** — qual código para a atividade (SaaS / CRM para empresas de piscinas)?
- [ ] **Morada** — pessoal vs escritório digital?
- [ ] **Primeiros clientes/pagamentos** — como lidar com os primeiros pagamentos (entrevistas → primeiros pagantes)? Muda algo na forma de faturar?
- [ ] **Riscos vs custos** da estrutura escolhida.

**Produto (resolve-se na app, não com o contabilista):**
- [ ] **RGPD** ligado à atividade/app → Issue #37 (/privacy, /terms, cookie banner) e #47 (right-to-erasure)
- [ ] **Backups da DB** — periodicidade (diária/semanal/mensal), riscos vs custos. *Decisão técnica.*

---

## 📜 Changelog

### 2026-05
- Projeto iniciado a partir de uma ideia

### 2026-07
- Módulo **Agenda** entregue: calendário interativo do operador, modelo de agendamento + CRUD, atribuição pelo owner, estado das visitas (feita/falhada) — Issues #50, #51, #52, #55, #58 fechados

### 2026-08
- Em produção em aquaos.pt, cliente zero em testes
- 18 Issues fechados no total; 8 abertos (2 `high`: RGPD #37, Stripe #13)
- **15-08 — reposicionamento estratégico:** de "CRM" para **sistema operativo da empresa de manutenção**. Modelo de dados em 3 camadas (contrato↔cliente / plano↔piscina / intervenção↔piscina), segmento 5–15 técnicos, fronteira de v1 definida, rotas e telemetria fora do v1. Ver Decisões.
