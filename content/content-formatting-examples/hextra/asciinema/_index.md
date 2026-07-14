---
title: Asciinema
linkTitle: Asciinema
weight: 13
description: Hextra asciinema terminal recording player shortcode.
draft: true
---

Embeds an [asciinema](https://asciinema.org/) terminal recording player. The player CSS/JS is loaded from CDN automatically when this shortcode is used.

```text
{{</* hextra/asciinema file="demo.cast" */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `file` | Path or URL to the `.cast` file (also accepts positional param) | _(required)_ |
| `theme` | Player color theme | `asciinema` |
| `speed` | Playback speed multiplier | `1` |
| `autoplay` | Auto-play on load | `false` |
| `loop` | Loop playback | `false` |
| `poster` | Poster/thumbnail specification | _(none)_ |
| `markers` | Comma-separated time markers (e.g., `"5:Intro,10:Demo"`) | _(none)_ |
| `filename` | Optional filename to display as a header | _(none)_ |

**Example:**

{{< hextra/asciinema file="demo.cast" speed="2" autoplay="true" loop="true" filename="terminal-session.cast" >}}
