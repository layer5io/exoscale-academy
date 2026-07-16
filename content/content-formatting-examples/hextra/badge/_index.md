---
title: Badge
linkTitle: Badge
weight: 7
description: Hextra inline badges with color variants and optional icons.
draft: true
---

Inline badges with color variants. Supports both positional and named parameter forms.

```text
{{</* hextra/badge "Simple badge" */>}}
{{</* hextra/badge content="Styled" color="green" link="https://example.com" icon="document-text" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `content` | Badge text (or use positional param) | _(required)_ |
| `color` | Color: `gray`, `green`, `blue`, `yellow`, `red`, `purple`, `orange`, `indigo`, `amber` | `gray` |
| `link` | Optional URL to wrap the badge as a link | _(none)_ |
| `icon` | Optional icon name from `data/hextra/icons.yaml` | _(none)_ |

**Color variants:**

{{< hextra/badge "Default" >}} {{< hextra/badge content="Success" color="green" >}} {{< hextra/badge content="Info" color="blue" >}} {{< hextra/badge content="Warning" color="yellow" >}} {{< hextra/badge content="Error" color="red" >}} {{< hextra/badge content="Important" color="purple" >}} {{< hextra/badge content="Amber" color="amber" >}}

**With a link:** {{< hextra/badge content="Visit Hugo" color="blue" link="https://gohugo.io" >}}

**With an icon:** {{< hextra/badge content="Documentation" color="green" icon="document-text" >}}
