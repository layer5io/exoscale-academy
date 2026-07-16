---
title: Details (Collapsible)
linkTitle: Details
weight: 3
description: Academy theme details/collapsible shortcode.
draft: true
---

The academy-theme `details` shortcode renders a collapsible content block.

```text
{{</* details summary="Click to expand" open="true" */>}}
Collapsed content here. Supports **Markdown**.
{{</* /details */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `summary` | Clickable summary text | _(empty)_ |
| `open` | Set to `"true"` to start expanded | collapsed |

**Expanded by default:**

{{< details summary="Academy theme details (open)" open="true" >}}
This is the academy-theme implementation of the `details` shortcode. It starts expanded because `open="true"` is set.

- Supports **Markdown** formatting
- Lists, `code`, and _emphasis_ all render correctly
{{< /details >}}

**Collapsed by default:**

{{< details summary="Click to reveal hidden content" >}}
This content was hidden until you clicked the summary. The `details` shortcode is useful for FAQs, optional information, or reducing page length.
{{< /details >}}
