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

> Fonte de verdade: **Issues no GitHub** (`iamaccosta/AquaOS`), em **milestones** `1.0.0` e `Backlog (pós-1.0.0)`. Espelho local em `todo.md`. Estado: **`v0.1.0`** = versão de teste com o cliente zero (em `main`, pré-launch) → a construir o **1.0.0** (launch público). `main` fica atrás do `develop` até terminar.

### Milestone `1.0.0` — o launch público verdadeiro, pronta para venda (alvo: domingo 23-08)
Ordem **estrita** — features → redesign → go-live:

**(1) Features**
- [x] #77 Plano de serviço (leve) por piscina + 3 tabs — **feito e mergeado** (PR #78, 16-08). `ServicePlan` com gamas-alvo `ph/chlorine/temp/salinity`.
- [x] #70 Refactor da intervenção — medições **antes/depois** (`InterventionMeasurement`) + relatório #32. **Feito e mergeado** (PR #76).
- [x] #71 Alertas operacionais/preditivos derivados no core (missed-visit, needs-plan, needs-schedule, overdue-maintenance). **Feito e mergeado** (PR #79).
- [~] #74 Telemetria: **scaffolding feito e mergeado** (PR #80, 16-08). Flag `TELEMETRY_MODULE_ENABLED` (default OFF → tab mostra "Em Desenvolvimento…" no 1.0.0, launch inalterado) · gating stub `hasTelemetryEntitlement` · `PoolTelemetryTab` com 4 estados. **#74 fica aberto** — form de conexão real, real-time/histórico e direito real por plano (depende dos tiers/#13) vão para pós-1.0.0.
- [x] #72 Portal do cliente read-only mínimo — **feito e mergeado** (PR #83, 17-08). Cliente acede à sua piscina (estado + plano + intervenções c/ fotos + agenda só data/estado); convite por link → password → JWT scope `portal`. **Scoping validado 7/7** (piscina de outro cliente → 404; token de empresa em `/portal/*` → 403), tal como decidido no modelo de acesso. Envio auto de email/QR do convite → #30.

> **Fase de features do 1.0.0 COMPLETA** (5/5: #77, #70, #71, #74 scaffolding, #72). Pela ordem estrita, o próximo é **(2) o redesign #61** — que bloqueia o go-live.

**(2) Redesign — #61**
- Baseline (fundações+shell+dashboard) **merged no develop** via PR #73 (fechou #62, #68); #69 /clients **descartado**. Re-ataca as páginas a partir daí, só depois das features.

**(3) Go-live — `blocked` até (1) e (2)**
- [~] #37 RGPD — código feito; falta texto legal.
- [ ] #13 [Epic] Stripe billing — #14–#19 fechados; falta setup Stripe live. ENI (15-08) desbloqueou o administrativo.
- [ ] #20 Reativar registo público (flip `SIGNUPS_ENABLED`) — flip final.

### Milestone `Backlog (pós-1.0.0)`
- [ ] Telemetria completa (ingestão de sensores) · rotas · #30 portal completo · #45 folha por cliente · #29 motor PDF avançado (fechável: filhos #32/#33 entregues).

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

### Modelo de domínio — plano de serviço vs. contrato (2026-08-16)
Ao refatorar as intervenções percebeu-se que faltava a espinha do modelo 3-camadas. Decisões:
- **Plano de serviço (operacional): construir agora, leve** — entidade por piscina com **frequência + gamas-alvo por parâmetro** (vocabulário condicionado pela ficha da piscina). É contra ele que as medições antes/depois comparam e de onde o #71 tira o alvo. Issue #77.
- **Contrato (comercial: preço/época/packaging): adiado → Backlog.** Não é preciso para o loop operacional que se vai vender no 1.0.0.
- **Como funciona o negócio (confirmado):** manutenção é recorrente com periodicidade acordada no início (vive no plano); construção/reparação são avulsos, fora da periodicidade → só manutenção leva medições. Tratamento é propriedade da piscina (ficha técnica), não do contrato. Agenda = híbrida: a cadência vem do plano, o dia/operador ficam por atribuir operacionalmente (já suportado pelo `visit-schedules`).
- **Criar plano:** não na criação da piscina — empty-state com CTA na tab principal. Reorg da página da piscina em 3 tabs: **principal (ficha técnica + plano)** · intervenções · **telemetria (condicional ao módulo, gating no #74)**.

### Portal do cliente #72 — modelo de acesso (2026-08-17)
Ao especificar a última feature do 1.0.0, definido o que o cliente final vê. **Mantido como um só issue** (não epic — o epic é o #30; o âmbito v1 é coeso e o launch é curto; partir em sub-issues seria cerimónia contra a data).

**Princípio:** o portal mostra ao cliente o **serviço** (o que paga + prova de que acontece), não a **operação interna** da empresa (mão de obra, gestão do próprio trabalho).

- **Entrada:** área de cliente própria (não `/dashboard`), role de cliente final, sessão scoped ao `client_id`.
- **Vê (read-only):** piscina(s) + estado · plano de serviço (frequência + gamas-alvo) · intervenções + relatório #32 (**núcleo — a prova de serviço**) · agendamentos (só datas + estado, sem operador).
- **Não vê:** alertas #71 (interno; expõe falhas da empresa) · operador atribuído (mão de obra) · telemetria (dormente no 1.0.0) · contrato/preço (decisão de negócio, adiado) · ficha de contactos (opcional, adiável).
- **Requisitos não-funcionais obrigatórios:** scoping estrito (impossível aceder a dados de outro cliente por manipular ids — mesmo rigor que #47/RGPD; é o pior bug possível deste produto) · suportar cliente → N piscinas.
- **Peça que pode crescer:** convite/login do cliente final (role externo novo). Fica como item do checklist do #72; extrair para issue próprio **só se** crescer ao construir — não pré-separar.
- ⚠️ **Armadilha:** não reutilizar o feed de alertas #71 no portal "por transparência". Um indicador de saúde virado ao cliente seria curado e separado (Fase 2, #30).

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

### Redesign passa a bloquear o launch (2026-08-16) — reverte 08-05
A 05-08 a decisão foi *launch na UI atual, redesign em paralelo não-bloqueante*. A 16-08 o André inverteu: **não lança sem o redesign** — #61 e filhos (#62, #68, #69) entraram na milestone `v1 — launch`. Consequência assumida e dita uma vez: o dia 1 de receita depende agora de quanto o redesign demorar, não só do go-live. ⚠️ O redesign é a zona de conforto dele (iterável ao infinito) — pô-lo no caminho crítico é exatamente o risco de "terminar o v1" esticar sem fim. Ver memória [[aquaos-launch-first-two-fronts]].

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
- **15-08 — ENI aberta** pela contabilista (atividade em nome individual). Desbloqueia #13 Stripe (setup live) e #20 registo público.
- **16-08 (manhã) — 1.ª reorg do GitHub/docs:** milestones + #70/#71/#72 criados; #29 sinalizado. **Decisão: redesign bloqueia o launch** (ver Decisões).
- **16-08 (tarde) — modelo de versões.** Decidido (opção SemVer): a versão de teste com o cliente zero (main atual) é **`v0.1.0`** (tag criada) — pré-launch, não era produção pública. A **nova versão passa a ser o `1.0.0`**, que coincide com o **launch verdadeiro** do produto. Alvo: **domingo 23-08** (curto, mas vamos tentar). Milestones `1.0.0` e `Backlog (pós-1.0.0)`. **Ordem estrita: features → redesign → go-live** (go-live marcado `blocked`). Baseline de design **merged no develop** (PR #73, fechou #62/#68); #69 /clients **descartado**. **Telemetria puxada para o 1.0.0 como scaffolding premium** (#74) — ingestão real fica no backlog. `main` fica atrás do `develop` até terminar (decisão consciente). Docs locais limpos (`temp.md` apagado, `tasks.md`/`todo.md` reset preservando backlog).
- **16-08 (noite) — 4.ª feature avançada: telemetria #74 (scaffolding).** PR #80 merged (19:35): flag `TELEMETRY_MODULE_ENABLED` default OFF (tab mostra "Em Desenvolvimento…", launch inalterado), gating stub `hasTelemetryEntitlement`, `PoolTelemetryTab` com 4 estados (só o 1.º alcançável com flag OFF). **Restante da telemetria (form de conexão, real-time, direito por plano) → pós-1.0.0; #74 fica aberto de propósito.** Depois: PR #81 (re-seed para o modelo operacional, sem telemetria) e PR #82 (fix #71 — needs-plan/needs-schedule só para piscinas de manutenção/limpeza), ambos 21:36. **Estado do 1.0.0: 4 de 5 features feitas; falta só #72 (portal read-only) antes do redesign #61.**
- **17-08 — #72 portal do cliente FECHADO (PR #83).** 5.ª e última feature: read-only v1 (sua piscina — estado, plano, intervenções c/ fotos, agenda só data/estado), convite por link → password → JWT scope `portal`. Segurança concentrada no `TenantGuard`, **scoping validado 7/7** (piscina de outro cliente → 404, token de empresa em `/portal/*` → 403) — exatamente o modelo de acesso decidido a 17-08. **Fase de features do 1.0.0 completa (5/5). Próximo pela ordem estrita: redesign #61 (bloqueia go-live).** Gates de go-live restantes: #37 (falta texto legal), #13 Stripe live, #20 flip signups.
