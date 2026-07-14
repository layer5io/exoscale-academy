---
title: Chapterstyle
linkTitle: Chapterstyle
weight: 5
description: Academy theme chapterstyle shortcode for custom section styling.
draft: true
---

The `chapterstyle` shortcode wraps content in a `<div>` with custom inline styles, useful for visually distinguishing chapter or section blocks.

```text
{{%/* chapterstyle style="padding: 1rem; border: 1px solid #d0d7de; border-radius: 0.75rem; background: #f8fafc;" */%}}
Your styled content here.
{{%/* /chapterstyle */%}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `style` | CSS style string applied to the wrapper `<div>` | _(none)_ |

**Example:**

{{% chapterstyle style="padding: 1rem; border: 1px solid #d0d7de; border-radius: 0.75rem; background: #f8fafc;" %}}
This content is wrapped by the `chapterstyle` shortcode. The border, padding, and background color are applied via the `style` parameter. This shortcode is useful for visually grouping related content into a styled container.
{{% /chapterstyle %}}
