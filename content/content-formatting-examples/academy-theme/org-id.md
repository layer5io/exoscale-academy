---
title: Org ID
linkTitle: Org ID
weight: 9
description: Academy theme org-id shortcode for rendering the organization UUID.
draft: true
---

The `org-id` shortcode renders the organization UUID extracted from the current page's content path.

Academy content is organized as `<type>/<orgID>/...` (relative to the content directory) where `<orgID>` is a UUID at path segment index 1. When the page is within such a structure, the shortcode outputs the UUID inline as a `<code>` element.

```text
{{</* org-id */>}}
```

**Example:**

{{< org-id >}}

> **Note:** This demo page is not under a UUID-named directory, so the shortcode renders the fallback text. When used within a `content/learning-paths/<uuid>/...` path, it will output the organization's UUID.
