---
title: Comment
linkTitle: Comment
weight: 5
description: Docsy comment shortcode for hidden content in Markdown.
draft: true
---

The `comment` shortcode hides content from the rendered output. It acts as an invisible annotation — useful for leaving notes in Markdown that readers won't see.

```text
{{</* comment */>}}This text is hidden from the rendered page.{{</* /comment */>}}
```

**Example:**

Visible text before the comment. {{< comment >}}This sentence is intentionally hidden by the Docsy `comment` shortcode — you cannot see it in the rendered output.{{< /comment >}} Visible text after the comment.

The text between the `comment` shortcode tags above is not rendered. View the page source to confirm.
