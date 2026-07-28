---
title: SwaggerUI API
linkTitle: SwaggerUI API
weight: 11
description: Render the Academy Theme swaggerui-api shortcode.
draft: true
---

The `swaggerui-api` shortcode renders an interactive Swagger UI viewer for an OpenAPI spec.

```text
{{</* swaggerui-api src="example.json" */>}}
{{</* swaggerui-api src="/data/openapi.json" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `src` | Path to the OpenAPI spec. Root-relative paths (files under `static/`) are used as-is; anything else resolves against the page bundle, then `assets/` | _(required)_ |
| `deepLinking` | `"true"` writes the expanded operation into the URL fragment. Only safe with one viewer per page | `"false"` |

**Example:**

{{< swaggerui-api src="example.json" >}}

Place the spec alongside `index.md` in a page bundle to keep it with the page that uses it, or in `assets/` to share it across pages. The spec must be part of this site — remote URLs are rejected at build time.