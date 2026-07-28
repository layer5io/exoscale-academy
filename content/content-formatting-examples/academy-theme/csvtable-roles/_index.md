---
title: CSV Table Roles
linkTitle: CSV Table Roles
weight: 10
description: Academy theme csvtable-roles shortcode for role-specific permissions tables.
draft: true
---

The `csvtable-roles` shortcode turns a role permissions matrix into per-role reference tables, so the permissions stay in one CSV instead of hand-maintained markdown that drifts out of sync. It reads every role column and renders a table per role, listing only the permissions that role holds — giving readers a single view of what one role can do.

```text
{{</* csvtable-roles */>}}
{{</* csvtable-roles src="keys-backup.csv" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `src` | Path to the CSV. Resolved against the page bundle first, then `assets/`, then the project root | `static/data/csv/keys-backup.csv` |
| `headerRow` | 0-based index of the header row. Set to `1` for a CSV with a title row above the header | `0` |

**Example:**

{{< csvtable-roles src="keys-backup.csv" >}}

The CSV needs `Function` and `Feature` columns and one column per role. Every column that isn't `Category`, `Function`, `Feature`, or metadata (`Keychain ID`, `Key ID`, `Inserted`, `Local Provider`) is treated as a role, and a row appears under that role when its cell is `X` or `X*`.

Paths for `assets/` are relative to that directory (`data/keys.csv`), while project-root paths keep their prefix (`static/data/csv/keys-backup.csv`).