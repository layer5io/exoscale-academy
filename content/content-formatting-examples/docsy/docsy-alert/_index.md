---
title: Alert (Docsy)
linkTitle: Alert (Docsy)
weight: 1
description: Docsy alert shortcode using the color parameter.
draft: true
---

The Docsy `alert` shortcode renders a colored alert box. The academy-theme overrides this shortcode, so invoking `alert` will use the academy-theme implementation. This page demonstrates the Docsy `color` parameter syntax.

```text
{{</* alert color="info" title="Info alert" */>}}Alert content here.{{</* /alert */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `color` | Bootstrap color: `primary`, `secondary`, `success`, `danger`, `warning`, `info` | _(none)_ |
| `title` | Optional title text | _(none)_ |

**Example:**

{{< alert color="info" title="Docsy alert" >}}This block uses the Docsy-style `color` parameter.{{< /alert >}}
