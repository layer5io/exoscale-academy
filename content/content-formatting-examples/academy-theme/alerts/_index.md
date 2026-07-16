---
title: Alert
linkTitle: Alert
weight: 1
description: Academy theme alert shortcode with multiple type variants.
draft: true
---

The academy-theme `alert` shortcode renders a styled alert box. The `type` parameter controls the color and icon.

```text
{{</* alert type="note" title="Note" */>}}Alert content with **Markdown** support.{{</* /alert */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `type` | Alert style: `note`, `info`, `danger`, `warning` | _(none)_ |
| `title` | Optional title above the alert body | _(none)_ |

**Examples:**

{{< alert title="Note" >}}A plain alert with a title.{{< /alert >}}

{{< alert type="note" title="Note" >}}This alert supports a title and **Markdown**.{{< /alert >}}

{{< alert type="info" title="Info" >}}This is an informational alert.{{< /alert >}}

{{< alert type="danger" title="Danger" >}}This is a danger alert.{{< /alert >}}

{{< alert type="warning" title="Warning" >}}This is a warning alert.{{< /alert >}}
