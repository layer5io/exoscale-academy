---
title: SVG
linkTitle: SVG
weight: 7
description: Academy theme svg shortcode for inline SVG icons from assets.
draft: true
---

The `svg` shortcode renders an inline SVG icon from `assets/icons/{name}.svg`.

```text
{{</* svg name="layer5-academy-icon" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `name` | SVG file name (without extension) from `assets/icons/` | _(required)_ |

**Example:**

<!-- The icon renders inline: {{< svg name="exoscale-icon" >}} -->

To add your own SVG icons, place `.svg` files in the `assets/icons/` directory.
