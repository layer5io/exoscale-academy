---
title: Include
linkTitle: Include
weight: 10
description: Hextra include shortcode for inlining content from another page.
draft: true
---

Includes the rendered content of another page inline. This shortcode **must** use the percent-delimiter syntax.

```text
{{%/* hextra/include "include-snippet" */%}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| positional | Page path relative to the content directory | _(required)_ |

**Example (included from a separate page):**

{{% hextra/include "include-snippet" %}}
