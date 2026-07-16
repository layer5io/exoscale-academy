---
title: Term
linkTitle: Term
weight: 11
description: Hextra glossary term shortcode with tooltip definitions.
draft: true
---

Wraps a glossary term in an `<abbr>` tooltip. Hover over the highlighted terms below to see their definitions. Definitions are sourced from `data/<lang>/termbase.yaml`.

```text
{{</* hextra/term "API" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `entry` | Glossary abbreviation or full term (named or positional) | _(required)_ |

To use this shortcode, create a termbase data file at `data/en/termbase.yaml`:

```yaml
- abbr: API
  term: Application Programming Interface
  definition: A set of protocols for building software.
```

**Examples:**

Hugo is an {{< hextra/term "SSG" >}} that can be controlled via its {{< hextra/term "CLI" >}}. Configuration is written in {{< hextra/term "YAML" >}} and sites are commonly served through a {{< hextra/term "CDN" >}}. Most projects use a {{< hextra/term "CI/CD" >}} pipeline to deploy changes automatically. The theme exposes a rich {{< hextra/term "API" >}} of shortcodes and partials.
