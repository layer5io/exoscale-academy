---
title: Blocks Cover and Link Down
linkTitle: Blocks Cover + Link Down
weight: 3
description: Render the Docsy blocks/cover shortcode together with blocks/link-down.
draft: true
---

```text
{{</* blocks/cover title="Cover Title" subtitle="Subtitle" color="dark" height="min" */>}}
Cover content here.
{{</* blocks/link-down color="info" */>}}
{{</* /blocks/cover */>}}
```

**Example:**

{{< blocks/cover title="Docsy Cover Block" subtitle="Hero Example" color="dark" height="min" >}}
This cover block uses page resources named `background` and `logo`.

{{< blocks/link-down color="info" >}}
{{< /blocks/cover >}}
