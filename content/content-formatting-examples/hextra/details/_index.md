---
title: Details
linkTitle: Details
weight: 3
description: Hextra collapsible details block with card styling and chevron indicator.
draft: true
---

A collapsible content block built on the native HTML `<details>` element with card styling and a rotating chevron indicator.

```text
{{</* hextra/details title="Click to expand" */>}}
Hidden content here. Supports **Markdown**.
{{</* /hextra/details */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `title` | Summary text (supports Markdown) | _(empty)_ |
| `closed` | Set to `"true"` to render collapsed | open |

**Open by default:**

{{< hextra/details title="Click to expand this section" >}}
Here is the hidden content revealed when the summary is clicked.

- Supports **Markdown** formatting
- Lists, `code`, and _emphasis_ all work
{{< /hextra/details >}}

**Starts closed:**

{{< hextra/details title="This one starts closed" closed="true" >}}
You had to click to see this content!
{{< /hextra/details >}}
