---
title: Steps
linkTitle: Steps
weight: 4
description: Hextra numbered step lists rendered with CSS counters.
draft: true
---

Numbered step lists rendered with CSS counters. Place `h3`–`h6` headings inside the shortcode body — each heading becomes a numbered step.

```text
{{</* hextra/steps */>}}

### First step
Description of the first step.

### Second step
Description of the second step.

{{</* /hextra/steps */>}}
```

**Example:**

{{< hextra/steps >}}

### Clone the repository

```bash
git clone https://github.com/layer5io/academy-example.git
```

### Install dependencies

```bash
npm install
```

### Start the development server

```bash
hugo server -D
```

{{< /hextra/steps >}}
