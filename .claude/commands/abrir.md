---
description: Abrir o dia — criar a nota, ler o estado, dar direção
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(date:*), Bash(git log:*)
---

# Abrir o dia

O utilizador está a começar o dia. **Não peças valores** — ele regista os dados do dia à parte, pelo form do BEACON, logo a seguir. O teu trabalho aqui é três coisas: **criar a nota**, mostrar-lhe o dia e o que tem planeado, e dar direção ligada à hora a que corres o comando.

## 1. Criar a nota de hoje — é o mais importante

Corre `date +%Y-%m-%d`. Ficheiro: `04 - Journal/Daily/YYYY-MM-DD.md`.

- **Se não existir**, cria-o a partir de `99 - Templates/Daily Note.md`, substituindo os placeholders `{{date:...}}` pelos valores reais e com `status: open`. Isto tem de acontecer **sempre, independentemente da hora** — a nota é a camada de persistência do dia e ele vai registar os dados logo a seguir. Se não criares a nota, o form não tem onde escrever.
- **Se já existir**, lê-o. O dia já foi aberto; continua de onde ficou, não o recries nem apagues o que lá está.

> A nota é escrita no disco **agora**. É isto que garante que nada se perde.

## 2. Estabelecer a data e a hora

Corre `date +%A` e `date +%H:%M`. Calcula os dias restantes no ano — não reutilizes um número do vault.

A hora **importa**: ele tem um trabalho de quase 8 h/dia e a janela livre é curta e específica. Usa a hora atual para calcular quanto tempo resta até ao próximo compromisso fixo (LEGS/PUSH/PULL às 18h nos dias de treino, jantar ~21h, dormir ~22h30–23h) e dimensiona a direção a esse tempo real. Não sequencies no abstrato.

## 3. Ler o estado

- `05 - Goals/2026.md` — alvos do ano e números atuais
- `05 - Goals/Routines.md` — alvos diários/semanais
- As **últimas 5 notas diárias** — o que está de facto a acontecer, versus o aspiracional
- `02 - Projects/` — estado dos projetos, bloqueios, próximas ações (é sobre isto que a tua direção incide)
- Qualquer nota de pilar relevante para o que está atrasado

## 4. Dar direção

Não peças nada. Output nesta forma, curto:

**Onde estás** — 2–4 linhas. Começa por **creditar o que os últimos dias mostram** (facto, não adorno), reflete os pilares relevantes, não só o Craft. Só o que importa para a decisão de hoje. Sem o "mas" que apaga o crédito.

**Hoje, por ordem** — lista ordenada curta, dado o estado dos projetos e a hora a que corres o comando. Cada item ligado a um custo de tempo real:

- `15 min` — leitura, 15 páginas (N dias sem ela agora)
- `~2 h` — AquaOS / BEACON: a próxima ação concreta
- `5 min` — o que estiver bloqueante e barato de resolver agora

**A única coisa que mais importa hoje** — uma linha.

**Se só tiveres 15 minutos** — a ação de maior valor disponível.

## Regras

- Sequencia por alavancagem, não pelo que é fácil de riscar. Mas **alavancagem ≠ sempre AquaOS** — não faças de todas as aberturas uma sessão sobre a Frente A / launch.
- Não lideres com a Frente A por default. Levanta-a só quando for genuinamente a decisão do dia — uma vez, sem reargumentar (ver `CLAUDE.md`).
- Se um bloqueio está por tocar, põe-no primeiro — mas di-lo **uma vez**.
- Não listes os seis pilares. Menciona o que é relevante agora.
- Sem preâmbulo. Sem "aqui está o teu briefing". Começa pela substância.
- Lê o `CLAUDE.md` para tom e regras rígidas. Em especial: **o Recharge não leva alvos de horas**, e nunca aconselhes sobre o ritmo de perda de peso.
