---
type: pillar
pillar: Craft
tags: [pillar]
---

# 🔨 Craft

> Projetos pessoais e serviços pagos. O motor que move o [[Capital]] — nada é faturado sem primeiro ser construído aqui.

## 🎯 Alvos

### Semanal
| Alvo | Quantidade |
|---|---|
| Horas de produtividade | 15 h (tudo o que não está já reservado noutro sítio) |

### 2026
| Alvo | Meta | Atual |
|---|---|---|
| Página web construída e publicada | — | ✅ iamaccosta.dev |
| Serviços entregues | 5 | 1 |

---

## ⚙️ Mecanismo

- **Gatilho:** varia — as 15 h não estão distribuídas por horários fixos.
- **Contador:** `craft_hours` na nota diária; estado dos projetos em [[Home|Projetos]].
- **Modo de falha conhecido:** horas registadas sem entregar. 15 h/semana de atividade num projeto que nunca chega a um cliente pagante produz zero Capital. Regista **o que se moveu**, não só as horas.

---

## 🗂 Projetos

```dataview
TABLE status, last_worked, url
FROM "02 - Projects"
WHERE type = "project"
SORT status ASC, last_worked DESC
```

| Projeto | Estado | Nota |
|---|---|---|
| [[AquaOS]] | 🟢 ativo | CRM para empresas de piscinas. Em produção, cliente zero em testes. **Único caminho real de receita.** |
| [[iamaccosta.dev]] | 🔵 estável | Publicado, nada pendente. |
| [[Onefolio Engine]] | ⏸ em pausa | Arquivado — mercado saturado. |

## 💼 Serviços

```dataview
TABLE client, status, fee
FROM "03 - Services"
WHERE type = "service"
SORT started DESC
```

Um serviço entregue até agora (baseado em Excel, não documentado).

---

## 📊 Estado atual (ago 2026)

O AquaOS está em desenvolvimento desde maio e é a coisa de maior alavancagem em todo o vault — é o único ativo com um preço definido (3.000 €/ano) e portanto o único que pode fechar a lacuna de 10.000 €. Está travado por um item **administrativo**, não técnico.

## 🪞 Notas

O Claude Code é a ferramenta de eleição para o trabalho de desenvolvimento nestes projetos.
