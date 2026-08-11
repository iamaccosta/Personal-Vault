---
type: inbox
tags: [inbox]
---

# 📥 Inbox

> Tudo o que está por organizar aterra aqui. Processado até zero na [[Weekly Review]] (sexta) e novamente todos os meses.

Mais recente no topo.

---

- **[Tarefa · 2026-08-11] Criar comando de análise dia/semana.** ⏰ Amanhã (12-08). Um comando que dá a análise separada em **objetivos diários** (tudo o que é sobre o dia) e **objetivos semanais** (tudo o que é sobre a semana). O ano só entra quando for pedida explicitamente uma análise de 2026.
- **[Compra · 2026-08-10] Encomendar ashwagandha.** ⏰ Lembrar amanhã (11-08).
- **[Compra · 2026-08-10] Suporte de portátil + teclado portátil.** Modelos já escolhidos (por confirmar quais). Comprar quando decidir.
- **[Ideia · 2026-08-05] UI/dashboard para o personal-vault.** Uma interface visual por cima deste vault que dê visibilidade rápida e transparente do ano, mês, semana e dia. Pilares (os 6, ou outra divisão melhor) com métricas, KPIs e dashboards a partir do frontmatter das notas diárias. Ao centro, um chat/terminal WSL com uma sessão do Claude iniciada para falar com o mentor como na command line. Só para registar — pegar mais tarde.
- **[Ideia · 2026-08-11] Persistência/aprendizagem do mentor entre sessões.** Junto à ideia da UI ↑. O problema a resolver: não ter de repetir as mesmas correções nem o mentor voltar a aplicar mal uma regra já explicada. Fine-tuning de pesos está fora (ferramenta errada). Caminho real, por ordem de alavancagem: **(1) mover as regras que têm de correr sempre para código determinístico** (hooks/scripts, como o `SessionStart` já faz) — ex.: o comando de análise dia/semana deve *calcular* a % do dia e o ritmo pró-rata do Craft sobre o frontmatter, em vez de depender de o Claude se lembrar; **(2) análise do histórico** — o frontmatter das notas é uma série temporal real (`craft_hours`, `pages_read`, `mood`, treino…); analisá-la dá padrões de comportamento genuínos (ex.: humor cai em dias sem treino), e é o mais próximo de "aprender como me comporto"; **(3) memória disciplinada** — menos regras, mais nítidas. Regra prática: cada correção repetida 2× é sinal de que devia ser script, não nota de memória. Avançar talvez no fim de semana.
- 
