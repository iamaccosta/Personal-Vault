---
type: project
title: BEACON
status: active
pillar: Craft
started: 2026-09
last_worked: 2026-09
stack: [Vite, React, TypeScript, node-pty, ws, xterm]
repo: https://github.com/iamaccosta/beacon.git
local: /home/iamaccosta/projects/beacon
url:
monetisable: false
revenue_model:
tags: [project, beacon, orquestracao]
---

# BEACON

> **Centro de comando pessoal** — o análogo do ATLAS (setup de trabalho) para o lado pessoal. App local para consultar o `personal-vault`, operar sessões do **Claude Code** e **orquestrar subagentes por perfil** sobre os projetos pessoais (a começar pelo AquaOS). O vault Markdown continua a ser a fonte de verdade; o BEACON não cria uma base de dados paralela.

| | |
|---|---|
| **Estado** | 🟢 roadmap 0–4 construído (PRs #1–#4 empilhados, a aguardar merge); prova runtime pendente |
| **Repo** | `github.com/iamaccosta/beacon` (privado) |
| **Código local** | `/home/iamaccosta/projects/beacon` |
| **Início** | setembro 2026 |
| **Último trabalho** | 2026-09-06 (repo criado, planeamento) |

> O código **não está neste vault** — este ficheiro é o registo, o código está no caminho acima. O **papel do mentor mantém-se fora da orquestração**: o BEACON é o orquestrador; o mentor (este vault) sequencia e reflete.

---

## 🎯 Definição de "suficientemente feito"

- [x] Falo com uma sessão Claude Code do vault a partir da web UI (terminal PTY WSL, só localhost) — Etapa 0
- [x] A UI lista projetos ativos + paths + trabalho aberto (Issues do AquaOS) — Etapa 1 (PR #1)
- [~] Um subagente `Desenvolvimento` fecha **uma tarefa real ponta-a-ponta** (issue→branch→PR), eu valido e faço merge — máquina pronta (PR #2, brief provado contra a Issue #101); a **prova em runtime no AquaOS é passo do André**
- [x] Vejo os estados dos subagentes ao vivo (working/completed/failed/interrupted) — Etapa 3 (PR #3), telemetria real do JSONL do Claude Code
- [x] Clicar numa tarefa/Issue encaminha-a para o subagente no repo certo — Etapa 4 (PR #4)

---

## 🚧 Bloqueios

| Bloqueio | Tipo | Responsável | Data | Estado |
|---|---|---|---|---|
| PAT dedicado do GitHub para o orquestrador | admin | eu | — | opcional até à Etapa 4 — o `gh` atual chega para começar |

> Não há bloqueio técnico. O `gh` já está autenticado (`repo`/`workflow`/`project`). Um PAT fine-grained dedicado é a via limpa quando o orquestrador for autónomo — mintar o token é ação do André.

---

## 🔨 Próximas ações

### Agora
- [ ] **Rever e fazer merge dos PRs #1→#4 por ordem** (empilhados; cada um base no anterior). `develop` não protegida — o merge é decisão tua.
- [ ] **Provar uma tarefa do AquaOS ponta-a-ponta em runtime** (sessão do orquestrador: `claude` no `beacon-vault` → Encaminhar uma Issue → aprovar → subagente abre PR). Muta o repo de produção, por isso ficou para ti.

### A seguir (todas as etapas do roadmap construídas)
- [x] **Etapa 0 — Fundações.** ✅ Terminal PTY WSL sobre WebSocket, só loopback (`develop`).
- [x] **Etapa 1 — Tab Estado.** ✅ Leitura read-only do `beacon-vault` + Issues do AquaOS via `gh` — PR #1.
- [x] **Etapa 2 — Perfil `Desenvolvimento` + brief.** ✅ Subagente Claude Code (`beacon-vault`) + `prepareDevelopmentBrief` puro — PR #2.
- [x] **Etapa 3 — Telemetria real de subagentes.** ✅ Leitura do JSONL do Claude Code (sem sintético) — PR #3.
- [x] **Etapa 4 — Routing por tarefa.** ✅ Encaminhar Issue → prompt de delegação injetado no terminal, com aprovação — PR #4.

### Um dia (wants, explicitamente depois)
- [ ] Perfis `Documentação` e `Research`
- [ ] Voz estilo JARVIS
- [ ] Visualização "cidade de agentes" (bonecos a trabalhar/à espera)

---

## 🧱 Stack & arquitetura

**Três camadas (espelham o setup de trabalho):**

1. **Vaults** (Obsidian, fonte de verdade) — **dois**, porque há dois papéis:
   - `personal-vault` — o **mentor**. Vida, seis pilares. Os projetos aparecem aqui só como **stubs de sequenciamento** (nome + estado); o mentor precisa de saber que existem, não de os operar.
   - `beacon-vault` — o **orquestrador**. Estrutura tipo `work-vault` sem Investigação: `00 - Inbox`, `02 - Projetos`, `Perfis`, `Daily`, `Templates` + `CLAUDE.md`. **Fonte de execução:** todo o estado operacional (`local`, `repo`, Issues, tarefas, perfil atribuído) vive aqui, não no vault do mentor.
2. **Perfis** (`beacon-vault/Perfis/`) — contrato dos subagentes. `Desenvolvimento`: lê só o repo atribuído, **não faz push nem toca nos vaults**, escala para `waiting` em pedidos de permissão, entrega evidência ao orquestrador; **o merge é decisão do orquestrador/André, nunca do worker**. Espelha o `work-vault/600-perfis/`; como se ligam a subagentes reais do Claude Code é detalhe da Etapa 2 (o orquestrador arranca no `beacon-vault`, logo `.claude/agents/` vive aí).
3. **BEACON** (repo `beacon`) — Vite+React+TS (front) · `node-pty`+`ws` (back). Backend abre PTY WSL no dir do **`beacon-vault`** e transmite para xterm no browser. Por cima: contrato de leitura do vault (tab Estado), brief de delegação puro (orquestrador), journal de lifecycle dos subagentes (tab de estados). Este repo é só código — não tem `CLAUDE.md` de papel.

**Onde vive cada `CLAUDE.md` (sem colisão):** o Claude Code lê o `CLAUDE.md` do diretório onde a sessão arranca — cada sessão abre num vault diferente, por isso mentor e orquestrador nunca se pisam.

```
personal-vault/CLAUDE.md     → mentor        (sessão /abrir /fechar /análise; terminal abre aqui)
beacon-vault/CLAUDE.md       → orquestrador  (terminal do BEACON abre aqui; análogo do AGENTS.md do work-vault)
beacon-vault/Perfis/*.md     → perfis        (Desenvolvimento; depois Documentação/Research)
beacon/  (código da app)     → Vite+React+TS · node-pty+ws — sem CLAUDE.md de papel
```

> Symlink WSL: `/home/iamaccosta/projects/beacon-vault` → `/mnt/c/Users/andre/projects/beacon-vault` (mesmo padrão do `personal-vault`).

**Limites não-negociáveis (herdados do ATLAS):**
- Escutar só em `127.0.0.1`; nunca expor na rede.
- Terminal criado/controlado pelo backend; o browser nunca corre comandos WSL diretamente.
- Sem telemetria sintética — a UI só mostra transições **reais** de subagentes.
- O worker de Desenvolvimento não faz push, não cria releases, não escreve no vault.

---

## 🧠 Decisões & armadilhas

### Fronteira de papéis: mentor ≠ orquestrador (2026-09-06)
O mentor (este vault, sessão de `/abrir` `/fechar` `/análise`) sequencia e reflete — fica **fora** da orquestração de dev. O BEACON é o orquestrador (o análogo do assistente administrativo do trabalho). Razão: se o mentor orquestrar subagentes, o contexto enche-se de estado de dev e a orientação degrada-se. Dois papéis, duas sessões.

### Diferenças face ao setup de trabalho (2026-09-06)
- **Runtime:** Claude Code (`claude`), não Codex → subagentes são **enumeráveis pela árvore de threads do app-server**; telemetria real sem adaptador sintético (o ATLAS precisa de adaptador porque o Codex não expõe os subagentes).
- **Git host:** GitHub (`gh`), não GitLab.
- **Modelo de tarefas:** o AquaOS já usa **GitHub Issues** como fonte de verdade → melhor substrato de routing que as tarefas estruturadas no `_index.md` do trabalho. Não reintroduzir tarefas estruturadas no vault pessoal.
- **Ficheiro de contrato:** Codex lê `AGENTS.md`, Claude Code lê `CLAUDE.md` → o contrato do orquestrador é um `CLAUDE.md` no `beacon-vault`, não um `AGENTS.md`. Não colide com o `CLAUDE.md` do mentor porque cada sessão lê o do seu próprio dir de arranque.
- **Perfis:** no trabalho vivem no vault (`600-perfis/`); aqui igual — vivem no `beacon-vault/Perfis/`.

### Topologia de dois vaults + fonte de execução (2026-09-07)
O trabalho tem **um** vault (o orquestrador lê e controla os ficheiros do `work-vault` diretamente; o terminal do ATLAS abre lá; o código do ATLAS está à parte em `work-vault-atlas`). O pessoal precisa de **dois** vaults porque tem dois papéis: o mentor (`personal-vault`) e o orquestrador (`beacon-vault`). Decisão: **o orquestrador é a fonte de execução.** Todo o estado operacional dos projetos vive no `beacon-vault`; o `personal-vault` guarda só stubs de sequenciamento (nome + estado). Assim não há dois sítios a declarar `local`/`repo` a divergir em silêncio. O `beacon-vault` real está no lado Windows (`/mnt/c/.../beacon-vault`) com symlink WSL, tal como o `personal-vault`.

### Ordem: provar o worker antes da orquestração (2026-09-06)
Etapas 0–2 provam o worker atómico (uma tarefa do AquaOS ponta-a-ponta) antes de construir routing/telemetria/UI rica. Cada etapa entrega valor verificável e pode parar. Wants (voz, cidade de agentes) só depois de a substância devolver horas reais.

---

## 📜 Changelog

### 2026-09
- **07-09 — Etapas 2–4 construídas (PRs empilhados #2→#3→#4).**
  - **#2 Perfil Desenvolvimento:** `server/development-profile.ts` + `server/orchestrator.ts` (`taskFromIssue`, `prepareDevelopmentBrief` puro); subagente executável `beacon-vault/.claude/agents/desenvolvimento.md` + contrato `60-perfis/`. Brief provado contra a Issue real #101.
  - **#3 Telemetria real:** `server/agents.ts` lê os subagentes do JSONL do Claude Code (`~/.claude/projects/.../subagents/`) e a conclusão pelo `tool_result` do transcript-pai; endpoint `/orchestrator/agents`; tab Subagentes. Sem sintético. Verificado contra sessão real (2 `Explore` `completed`).
  - **#4 Routing:** `routingPrompt` + `POST /orchestrator/route`; botão "Encaminhar" por Issue injeta a delegação no terminal do orquestrador com aprovação. E2E real: WS + route → 202 + prompt na shell.
  - 23 testes + build limpos em todas. Empilhamento: cada branch base na anterior; merge por ordem #1→#4.
- **07-09 — Etapa 1 (tab Estado) em PR.** `server/vault.ts`: parse dos `10-projects/**/_index.md` + Issues abertas via `gh` (labels `type:`/`priority:`/`blocked`), degradação graciosa. Endpoint `GET /vault/state` (só loopback). Frontend: tab Estado com cards de projeto + Issues por prioridade; terminal mantém-se montado ao trocar de tab. 8 testes + build limpos; `/vault/state` devolve o AquaOS com 9 Issues reais. Branch `feat/etapa-1-estado` → **PR #1** para `develop`. Conteúdo de suporte em `beacon-vault@develop` (`10-projects/aquaos/_index.md` + `99-templates/projeto.md`).
- **07-09 — Etapa 0 (fundações) construída.** Repo `beacon`: scaffold Vite+React+TS + `node-pty`/`ws` portado do núcleo de terminal do ATLAS e adaptado (Claude Code, `beacon-vault`, sem as camadas de orquestração). Backend só loopback (guarda + allowlist de origin), PTY `bash -il` no `beacon-vault`, xterm com fit/resize/reconexão por `sessionId`, `/health`. `npm run build` limpo; smoke test do `/health` OK. Commit `d0501c7` em `develop`. README alinhado (aponta `beacon-vault`, não `personal-vault`).
- **07-09 — vault do orquestrador criado.** Decidido: dois vaults (mentor `personal-vault` + orquestrador `beacon-vault`), orquestrador como fonte de execução, mentor com stubs. `CLAUDE.md` do orquestrador vive no `beacon-vault`. Symlink WSL `/home/iamaccosta/projects/beacon-vault`. Estrutura criada: `00-inbox`, `10-projects`, `60-perfis`, `90-daily`, `99-templates` + `CLAUDE.md` (adaptado do `AGENTS.md` do work-vault: Claude Code, GitHub, perfis, fronteira orquestrador≠mentor). Repo privado `iamaccosta/beacon-vault`: **`develop` default**, **`main` protegida** (PR 1 aprovação, sem force-push/deleção, enforce_admins). Primeiro commit em ambas as branches.
- **06-09 — projeto criado.** Análise do `work-vault` + `work-vault-atlas`; desenho-alvo de 3 camadas definido; nome escolhido (BEACON); repo privado `iamaccosta/beacon` criado (`main` default) com scaffold inicial (README + gitignore); nota de projeto registada; 5 etapas de implementação definidas.
