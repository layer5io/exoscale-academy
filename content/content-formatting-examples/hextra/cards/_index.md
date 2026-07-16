---
title: Cards
linkTitle: Cards
weight: 2
description: Hextra cards shortcode for responsive grid card layouts.
draft: true
---

Cards display content in a responsive grid. Wrap individual `hextra/card` shortcodes inside a `hextra/cards` container.

```text
{{</* hextra/cards cols="3" */>}}
  {{</* hextra/card link="https://example.com" title="Title" subtitle="Description" icon="document-text" */>}}
  {{</* hextra/card title="No link" subtitle="This card is not clickable." */>}}
{{</* /hextra/cards */>}}
```

**Container parameters (`hextra/cards`):**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `cols` | Number of columns at the `lg` breakpoint | `3` |

**Card parameters (`hextra/card`):**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `title` | Card heading | _(required)_ |
| `subtitle` | Description text below the title | _(none)_ |
| `link` | URL the card links to | _(none)_ |
| `icon` | Icon name from `data/hextra/icons.yaml` | _(none)_ |
| `image` | Image URL or page-bundle path | _(none)_ |
| `tag` | Badge text shown in the top-right corner | _(none)_ |
| `tagColor` | Bootstrap color name for the tag badge | `secondary` |

**Three-column grid:**

{{< hextra/cards >}}
  {{< hextra/card link="https://gohugo.io" title="Hugo" subtitle="The world's fastest static site generator." icon="document-text" >}}
  {{< hextra/card link="https://getbootstrap.com" title="Bootstrap" subtitle="Build fast, responsive sites with Bootstrap." icon="folder" >}}
  {{< hextra/card link="https://github.com" title="GitHub" subtitle="Where the world builds software." icon="information-circle" >}}
{{< /hextra/cards >}}

**Two-column grid with tags:**

{{< hextra/cards cols="2" >}}
  {{< hextra/card title="Card without link" subtitle="This card has no link — it is not clickable." >}}
  {{< hextra/card link="/" title="Card with tag" subtitle="This card sports a badge tag." tag="New" tagColor="success" >}}
{{< /hextra/cards >}}
