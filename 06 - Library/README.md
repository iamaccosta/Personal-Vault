---
tags: [library]
---

# 📚 Biblioteca

> 6 livros em [[2026]]. Atualmente **4 terminados**, **os 4 com linha em Aplicado → 4 contam** (os 3 primeiros foram aplicados antes de o vault existir; o *Secrets* foi aplicado a 11-08-2026, terminado a 02-09-2026).

```dataview
TABLE status, author, pages_done + "/" + pages_total AS Progresso
FROM "06 - Library"
WHERE type = "book"
SORT status ASC
```

## A regra

Um livro conta quando a sua tabela **Aplicado** tem pelo menos uma linha. Páginas lidas não é a métrica — comportamento mudado é.

Isto existe por causa de um modo de falha específico, autodiagnosticado em 2025: atingir o número (7 livros contra um alvo de 4) enquanto se tira menos partido do que era possível.

## A ler atualmente

- *(nenhum — A Simple Path to Wealth a caminho)*

## Terminados em 2026

- [[The 48 Laws of Power]] *(versão reduzida)*
- [[What's Your Dream]]
- [[The Magic of Thinking Big]]
- [[Secrets of the Millionaire Mind]] — T. Harv Eker *(02-09-2026)*
