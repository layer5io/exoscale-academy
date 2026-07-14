---
title: Jupyter
linkTitle: Jupyter
weight: 12
description: Hextra Jupyter Notebook renderer shortcode.
draft: true
---

Renders a Jupyter Notebook (`.ipynb`) as code blocks and Markdown cells.

```text
{{%/* hextra/jupyter "example-notebook.ipynb" */%}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| positional | Path or URL to the `.ipynb` file | _(required)_ |
| `allowUnsafeHTML` | Set to `"true"` to render raw HTML from notebook outputs | `false` |
| `filename` | Optional filename to display as a header | _(none)_ |

**Example:**

{{% hextra/jupyter "example-notebook.ipynb" %}}
