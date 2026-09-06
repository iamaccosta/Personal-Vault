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
| **Estado** | 🟢 dev ativo — Etapa 0 (fundações) por começar |
| **Repo** | `github.com/iamaccosta/beacon` (privado) |
| **Código local** | `/home/iamaccosta/projects/beacon` |
| **Início** | setembro 2026 |
| **Último trabalho** | 2026-09-06 (repo criado, planeamento) |

> O código **não está neste vault** — este ficheiro é o registo, o código está no caminho acima. O **papel do mentor mantém-se fora da orquestração**: o BEACON é o orquestrador; o mentor (este vault) sequencia e reflete.

---

## 🎯 Definição de "suficientemente feito"

- [ ] Falo com uma sessão Claude Code do vault a partir da web UI (terminal PTY WSL, só localhost)
- [ ] A UI lista projetos ativos + paths + trabalho aberto (Issues do AquaOS)
- [ ] Um subagente `Desenvolvimento` fecha **uma tarefa real ponta-a-ponta** (issue→branch→PR), eu valido e faço merge
- [ ] Vejo os estados dos subagentes ao vivo (working/waiting/blocked/failed)
- [ ] Clicar numa tarefa/Issue encaminha-a para o subagente no repo certo

---

## 🚧 Bloqueios

| Bloqueio | Tipo | Responsável | Data | Estado |
|---|---|---|---|---|
| PAT dedicado do GitHub para o orquestrador | admin | eu | — | opcional até à Etapa 4 — o `gh` atual chega para começar |

> Não há bloqueio técnico. O `gh` já está autenticado (`repo`/`workflow`/`project`). Um PAT fine-grained dedicado é a via limpa quando o orquestrador for autónomo — mintar o token é ação do André.

---

## 🔨 Próximas ações

### Agora
- [ ] **Etapa 0 — Fundações + contrato de segurança.** Scaffold (Vite+React+TS front, `node-pty`+`ws` back), escutar só `127.0.0.1`, backend abre PTY WSL no dir do `personal-vault`, terminal xterm com histórico/resize/reconexão. `AGENTS.md` com os limites não-negociáveis. → *falo com o Claude Code do vault pela web UI.*

### A seguir
- [ ] **Etapa 1 — Contrato de leitura do vault (tab Estado).** Parse de `02 - Projects/**` (`local`, `repo`, `status`, próximas ações) + Issues do AquaOS via `gh` → vista read-only.
- [ ] **Etapa 2 — Perfil `Desenvolvimento` + brief de delegação.** Portar o contrato como subagente Claude Code + função pura de brief (tarefa+repo → delegação). **Provar UMA tarefa pequena do AquaOS ponta-a-ponta.**
- [ ] **Etapa 3 — Telemetria de subagentes (tab de estados).** Estados reais via árvore de threads do Claude Code (working/waiting/blocked/failed/interrupted + saúde da bridge). Sem telemetria sintética.
- [ ] **Etapa 4 — Routing por tarefa.** Clicar numa Issue → orquestrador atribui perfil → lança subagente no repo certo.

### Um dia (wants, explicitamente depois)
- [ ] Perfis `Documentação` e `Research`
- [ ] Voz estilo JARVIS
- [ ] Visualização "cidade de agentes" (bonecos a trabalhar/à espera)

---

## 🧱 Stack & arquitetura

**Três camadas (espelham o setup de trabalho):**

1. **Vault** (`personal-vault`) — estado e memória. Projetos declaram `local`/`repo`. Fonte de verdade.
2. **Perfis** — contrato dos subagentes. `Desenvolvimento`: lê só o repo atribuído, **não faz push nem toca no vault**, escala para `waiting` em pedidos de permissão, entrega evidência ao orquestrador; **o merge é decisão do orquestrador/André, nunca do worker**. Vivem como **subagentes do Claude Code no repo do BEACON**, não no vault (o vault é o registo, não a base de código).
3. **BEACON** (este repo) — Vite+React+TS (front) · `node-pty`+`ws` (back). Backend abre PTY WSL no dir do vault e transmite para xterm no browser. Por cima: contrato de leitura do vault (tab Estado), brief de delegação puro (orquestrador), journal de lifecycle dos subagentes (tab de estados).

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
- **Perfis:** no trabalho vivem no vault (`600-perfis/`); aqui vivem no repo do BEACON como subagentes Claude Code (o `CLAUDE.md` pessoal proíbe código no vault).

### Ordem: provar o worker antes da orquestração (2026-09-06)
Etapas 0–2 provam o worker atómico (uma tarefa do AquaOS ponta-a-ponta) antes de construir routing/telemetria/UI rica. Cada etapa entrega valor verificável e pode parar. Wants (voz, cidade de agentes) só depois de a substância devolver horas reais.

---

## 📜 Changelog

### 2026-09
- **06-09 — projeto criado.** Análise do `work-vault` + `work-vault-atlas`; desenho-alvo de 3 camadas definido; nome escolhido (BEACON); repo privado `iamaccosta/beacon` criado (`main` default) com scaffold inicial (README + gitignore); nota de projeto registada; 5 etapas de implementação definidas.
