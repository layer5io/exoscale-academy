---
title: Blocks Section and Feature
linkTitle: Blocks Section + Feature
weight: 5
description: Render the Docsy blocks/section and blocks/feature shortcodes together.
draft: true
---

```text
{{</* blocks/section color="light" type="container" */>}}
  {{</* blocks/feature icon="fa-layer-group" title="Title" */>}}Description.{{</* /blocks/feature */>}}
{{</* /blocks/section */>}}
```

**Example:**

{{< blocks/section color="light" type="container" >}}
{{< blocks/feature icon="fa-layer-group" title="Reusable" >}}Use shortcodes to compose reusable content patterns.{{< /blocks/feature >}}
{{< blocks/feature icon="fa-code" title="Declarative" >}}Keep formatting examples inside Markdown instead of hard-coding HTML everywhere.{{< /blocks/feature >}}
{{< blocks/feature icon="fa-book" title="Documented" >}}This page shows how each shortcode behaves when rendered.{{< /blocks/feature >}}
{{< /blocks/section >}}
