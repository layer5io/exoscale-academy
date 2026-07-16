---
title: Tabpane and Tab
linkTitle: Tabpane + Tab
weight: 12
description: Render the Docsy tabpane and tab shortcodes together.
draft: true
---

```text
{{</* tabpane text=true */>}}
  {{%/* tab header="Tab 1" lang="en" */%}}Tab content.{{</* /tab */>}}
  {{%/* tab header="Tab 2" lang="en" */%}}More content.{{</* /tab */>}}
{{</* /tabpane */>}}
```

**Example:**

{{< tabpane text=true >}}

{{% tab header="Overview" lang="en" %}}
This is the first rendered tab.
{{< /tab >}}

{{% tab header="Image" lang="en" %}}
![Rendered tab image](exoscale-icon.png)
{{< /tab >}}

{{< /tabpane >}}
