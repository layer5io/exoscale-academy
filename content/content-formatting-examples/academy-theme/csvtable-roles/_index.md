---
title: CSV Table Roles
linkTitle: CSV Table Roles
weight: 10
description: Academy theme csvtable-roles shortcode for role-specific permissions tables.
draft: true
---

The `csvtable-roles` shortcode reads `static/data/csv/keys-backup.csv` and renders per-role permission tables showing which functions each role has access to.

```text
{{</* csvtable-roles */>}}
```

The CSV file must be located at `static/data/csv/keys-backup.csv` with the same format used by `csvtable`.
