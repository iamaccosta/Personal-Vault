---
description: Abrir o dia — criar a nota, ler o estado, dar direção
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(date:*), Bash(git log:*)
---

# Abrir o dia

O utilizador está a começar uma sessão de trabalho. Dá-lhe direção, não um relatório.

## 1. Estabelecer a data e a hora

Corre `date +%Y-%m-%d` e `date +%A`. Calcula os dias restantes no ano — não reutilizes um número do vault.

Corre também `date +%H:%M` para saber **que horas são agora**. Ele tem um trabalho de quase 8 h/dia — a janela livre é curta e específica. Usa a hora atual para calcular quanto tempo resta até ao próximo compromisso fixo (PULL/LEGS/PUSH às 18h, jantar, dormir) e dimensiona a lista a esse tempo real. Se ele te disser a hora ou o tempo que tem, usa isso; se não, ancora na hora do relógio, não no abstrato.

## 2. Criar a nota de hoje se ainda não existir

Ficheiro: `04 - Journal/Daily/YYYY-MM-DD.md`.

- **Se não existir**, cria-o a partir de `99 - Templates/Daily Note.md`, substituindo os placeholders `{{date:...}}` pelos valores reais e com `status: open`. Esta é a primeira abertura do dia — a nota passa a ser a camada de persistência do dia.
- **Se já existir**, lê-o. O dia já foi aberto (talvez noutra sessão); continua de onde ficou, não o recries nem apagues o que lá está.

> A nota é escrita no disco **agora**, não no fecho. É isto que garante que nada se perde se uma sessão morrer a meio.

## 3. Ler o estado

- `05 - Goals/2026.md` — alvos do ano e números atuais
- `05 - Goals/Routines.md` — alvos diários/semanais
- A nota de hoje em `04 - Journal/Daily/YYYY-MM-DD.md` se existir
- As **últimas 5 notas diárias** — é isto que te diz o que está de facto a acontecer, versus o que é aspiracional
- Qualquer nota de pilar relevante para o que está atrasado

## 4. Pergunta-lhe duas coisas

Limita a duas. Não interrogues.

1. **O que já fizeste hoje?**
2. **Quanto tempo tens, e para quê?**

Se ele já respondeu a isto na mensagem, salta as perguntas e vai direto à direção.

## 5. Dar direção

Output nesta forma, e mantém-no curto:

**Onde estás** — 2–4 linhas. Começa por **creditar o que ele já fez hoje** (é um facto, não um adorno) e reflete os pilares relevantes, não só o Craft. Só o que é relevante para a decisão de hoje. Não um dump de estado completo, e sem o "mas" que apaga o crédito.

**Hoje, por ordem** — uma lista ordenada curta. Cada item ligado a um custo de tempo real:

- `15 min` — leitura, 15 páginas (4 dias sem ela agora)
- `~2 h` — AquaOS: fechar o feedback do cliente zero
- `5 min` — registar o peso, o Body está bloqueado nisso

**A única coisa que mais importa hoje** — uma única linha.

**Se só tiveres 15 minutos** — a pequena ação de maior valor disponível.

## Regras

- Sequencia por alavancagem, não pelo que é mais fácil de riscar. Mas **alavancagem ≠ sempre AquaOS** — não faças de todas as aberturas uma sessão sobre a Frente A.
- Não lideres a abertura com a Frente A / launch por default. Levanta-a só quando for genuinamente a decisão do dia — uma vez, sem a reargumentar (ver `CLAUDE.md`, Regras rígidas).
- Se um bloqueio tem estado por tocar, põe-no primeiro — mas di-lo **uma vez**, sem o reargumentar.
- Não listes os seis pilares. Menciona o que é relevante para a decisão agora.
- Sem preâmbulo. Sem "aqui está o teu briefing diário". Começa pela substância.
- Se ele está prestes a começar uma sessão longa de Craft e algo pequeno e bloqueante está por resolver, di-lo antes de ele abrir o editor — é o momento em que é barato de resolver.
- Lê o `CLAUDE.md` para tom e regras rígidas. Em especial: **o Recharge não leva alvos de horas**, e nunca aconselhes sobre o ritmo de perda de peso.
