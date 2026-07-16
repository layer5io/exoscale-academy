---
title: Pageinfo
linkTitle: Pageinfo
weight: 4
description: Academy theme pageinfo shortcode for page-level notices.
draft: true
---

The academy-theme `pageinfo` shortcode renders a page-level notice box.

```text
{{</* pageinfo */>}}Notice content with **Markdown** support.{{</* /pageinfo */>}}
```

**Example:**

{{< pageinfo >}}
This block uses the academy-theme implementation of `pageinfo`. It is useful for rendering page-level status notices, such as deprecation warnings or draft indicators.
{{< /pageinfo >}}
