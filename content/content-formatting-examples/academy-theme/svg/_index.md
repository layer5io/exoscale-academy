---
title: SVG
linkTitle: SVG
weight: 7
description: Render an inline SVG icon, resolved from the page bundle first, then assets.
draft: true
---

The `svg` shortcode renders an inline SVG icon.

```text
{{</* svg name="exoscale-icon" */>}}
{{</* svg src="1e2a8e46-937c-47ea-ab43-5716e3bcab2e/icons/foo.svg" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `name` | SVG file name (without extension). Looks for `{name}.svg` in the page bundle, then `assets/icons/{name}.svg` | _(required, unless `src` is set)_ |
| `src` | Explicit path including the extension, resolved against the page bundle, then `assets/`. Takes precedence over `name` | _(none)_ |

**Example:**

The icon renders inline: {{< svg name="exoscale-icon" >}}

To add your own SVG icons, place `.svg` files in the `assets/icons/` directory, or alongside `index.md` in a page bundle to keep them with the page that uses them.

Use `src` when the file lives outside `assets/icons/` — for example an org-scoped directory like `assets/{org-id}/icons/`. Paths are relative to `assets/`, so leave that prefix off: a file at `assets/1e2a8e46-937c-47ea-ab43-5716e3bcab2e/icons/foo.svg` is referenced as `src="1e2a8e46-937c-47ea-ab43-5716e3bcab2e/icons/foo.svg"`. A build warning is logged if the file is found in neither location.