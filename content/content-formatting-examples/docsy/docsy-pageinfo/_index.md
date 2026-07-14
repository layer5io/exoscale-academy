---
title: Pageinfo (Docsy)
linkTitle: Pageinfo (Docsy)
weight: 2
description: Docsy pageinfo shortcode with the color parameter.
draft: true
---

The Docsy `pageinfo` shortcode renders a colored page-level info box. The academy-theme overrides this shortcode.

```text
{{</* pageinfo color="primary" */>}}Notice content here.{{</* /pageinfo */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `color` | Bootstrap color name | _(none)_ |

**Example:**

{{< pageinfo color="primary" >}}This block uses the Docsy implementation of `pageinfo` with `color="primary"`.{{< /pageinfo >}}
