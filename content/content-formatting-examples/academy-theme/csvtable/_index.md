---
title: CSV Table
linkTitle: CSV Table
weight: 9
description: Academy theme csvtable shortcode for rendering permissions tables from CSV data.
draft: true
---

The `csvtable` shortcode turns a role permissions matrix into documentation tables, so the permissions stay in one CSV instead of hand-maintained markdown that drifts out of sync. It groups rows by their `Category` column and renders a table per category, with every role as a column — giving readers a feature-by-feature comparison of role access.

```text
{{</* csvtable */>}}
{{</* csvtable src="keys-backup.csv" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `src` | Path to the CSV. Resolved against the page bundle first, then `assets/`, then the project root | `static/data/csv/keys-backup.csv` |
| `headerRow` | 0-based index of the header row. Set to `1` for a CSV with a title row above the header | `0` |

**Example:**

{{< csvtable src="keys-backup.csv" >}}

The CSV needs a `Category` column, `Function` and `Feature` columns, and one column per role. `Keychain ID`, `Key ID`, `Inserted`, and `Local Provider` are hidden if present. Role cells render `X` as ✅, `X*` as ✅ *, and anything else as ❌.

Paths for `assets/` are relative to that directory (`data/keys.csv`), while project-root paths keep their prefix (`static/data/csv/keys-backup.csv`).