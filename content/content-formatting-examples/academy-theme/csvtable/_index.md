---
title: CSV Table
linkTitle: CSV Table
weight: 9
description: Academy theme csvtable shortcode for rendering permissions tables from CSV data.
draft: true
---

The `csvtable` shortcode reads `static/data/csv/keys-backup.csv` and renders a permissions table grouped by category. Each role column shows a check or cross indicator.

```text
{{</* csvtable */>}}
```

The CSV file must be located at `static/data/csv/keys-backup.csv` and contain columns for Category, Function, Feature, and various role names.
