---
title: Callout
linkTitle: Callout
weight: 1
description: Hextra callout shortcode with colored left border and icon.
draft: true
---

Callouts highlight important information with a colored left border and an icon. Five types are supported: **default** (green), **info** (blue), **warning** (orange), **error** (red), and **important** (teal).

```text
{{</* hextra/callout type="info" */>}}
Your message here. Supports **Markdown**.
{{</* /hextra/callout */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `type` | Callout style: `default`, `info`, `warning`, `error`, `important` | `default` |
| `emoji` | Optional emoji to replace the icon (e.g., `"🚀"`) | _(none)_ |

**Examples:**

{{< hextra/callout >}}
This is a **default** callout. It uses a light-bulb icon and green styling.
{{< /hextra/callout >}}

{{< hextra/callout type="info" >}}
This is an **info** callout. Use it to surface supplementary context.
{{< /hextra/callout >}}

{{< hextra/callout type="warning" >}}
This is a **warning** callout. Draw attention to potential issues.
{{< /hextra/callout >}}

{{< hextra/callout type="error" >}}
This is an **error** callout. Indicate something that went wrong.
{{< /hextra/callout >}}

{{< hextra/callout type="important" >}}
This is an **important** callout. Emphasize critical information.
{{< /hextra/callout >}}

{{< hextra/callout emoji="🚀" >}}
You can use an **emoji** instead of the default icon.
{{< /hextra/callout >}}
