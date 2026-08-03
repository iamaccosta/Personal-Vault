# Personal Vault

Vault de Obsidian para a vida pessoal, projetos e objetivos. O trabalho vive num vault separado.

## Como abrir

Obsidian → *Open folder as vault* → seleciona esta pasta.

**Plugin recomendado:** Dataview (os dashboards usam-no). Tudo continua legível sem ele — apenas as queries não renderizam.

Começa em **[[Home]]**.

---

## Estrutura

```
Personal Vault/
├── Home.md                  ← dashboard, começa aqui
├── 00 - Inbox.md            ← captura por organizar, processada semanalmente
│
├── 01 - Pillars/            ← os 6 domínios de vida (lente de revisão)
│   ├── Body.md              treino, alimentação, água, peso
│   ├── Mind.md              alemão, leitura, cursos
│   ├── Craft.md             projetos + serviços
│   ├── Capital.md           faturado + poupado
│   ├── People.md            ela, LinkedIn, publicações
│   └── Recharge.md          amigos, ela, lazer a solo, sono
│
├── 02 - Projects/           Active | Stable | Paused
├── 03 - Services/           Active | Completed
├── 04 - Journal/            Daily | Weekly | Monthly
├── 05 - Goals/              2026.md · Routines.md
├── 06 - Library/            livros — Reading | Finished
├── 07 - Courses/            cursos & formações
├── 99 - Templates/          todos os templates
└── Archive/
```

## Porquê 6 pilares

Os modelos de bem-estar convergem em 5–6 domínios (físico, mental, social, financeiro, propósito). A Roda da Vida de 8 categorias tem origem comercial e pouco suporte empírico; o PERMA tem 5 elementos mas colapsa em aproximadamente um único fator quando medido. Seis dão cobertura total dos objetivos reais sem áreas órfãs.

Os pilares são a **lente de revisão**, não a unidade diária de trabalho. Todos os seis se mantêm ativos.

## O princípio de design

**Quantidades, não checkboxes** — com uma exceção deliberada.

A nota diária regista números no frontmatter (`duolingo_min`, `pages_read`, `craft_hours`…) para o Dataview poder somar totais semanais e mensais reais.

Isto é deliberado. Uma streak de 555 dias no Duolingo coexiste com estar muito longe do nível 60, porque um contador binário premeia aparecer e não progredir. Nove dos dez alvos diários/semanais não têm neste momento contador nem gatilho nenhum — o que é a explicação mecânica para o que está no bom caminho e o que não está.

A exceção é o **Recharge**, deliberadamente não quantificado. O seu modo de falha é a culpa durante o lazer, não a falta de lazer. Um alvo quantificado aí tornar-se-ia mais um número para falhar e alimentaria a culpa que existe para curar. Fica em modo de observação até haver dados registados suficientes para dizer algo verdadeiro.

## Ritmo

| Quando | O quê |
|---|---|
| Manhã | Abertura — planear, nomear a única coisa |
| Noite | Journaling — registar o que aconteceu de facto |
| Sexta | Revisão Semanal — varrimento dos pilares, inbox a zero |
| Fim do mês | Revisão Mensal — flores, atualizar o 2026 |

## Templates

`Daily Note` · `Weekly Review` · `Monthly Review` · `Project` · `Service` · `Book` · `Course` · `Pillar`

Copia de `99 - Templates/`. Se usares o plugin Templater ou Core Templates, aponta-o para essa pasta — os placeholders `{{date}}` passam a preencher automaticamente.
