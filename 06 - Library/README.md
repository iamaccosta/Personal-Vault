---
tags: [library]
---

# 📚 Library

> 6 books in [[2026]]. Currently 2 finished, 1 in progress.

```dataview
TABLE status, author, pages_done + "/" + pages_total AS Progress
FROM "06 - Library"
WHERE type = "book"
SORT status ASC
```

## The rule

A book counts when its **Applied** table has at least one row. Pages read is not the metric — behaviour changed is.

This exists because of a specific, self-diagnosed failure mode from 2025: hitting the number (7 books vs a target of 4) while getting less out of it than possible.

## Currently reading

- [[Secrets of the Millionaire Mind]] — T. Harv Eker

## Finished 2026

- [[What's Your Dream]]
- [[The Magic of Thinking Big]]
