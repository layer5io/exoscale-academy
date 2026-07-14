---
title: TabPanel
linkTitle: TabPanel
weight: 13
description: Example of tabpane and tab used as a content component.
draft: true
---

```text
{{</* tabpane text=true */>}}
  {{%/* tab header="Example 1" lang="en" active="true" */%}}
  First tab content.
  {{</* /tab */>}}
  {{%/* tab header="Example 2" lang="en" */%}}
  Second tab content.
  {{</* /tab */>}}
{{</* /tabpane */>}}
```

**Example:**

{{< tabpane text=true >}}

{{% tab header="Example 1" lang="en" active="true" %}}

Tabs help organize related content.

* Concise explanation
* Another brief point

{{< /tab >}}

{{% tab header="Example 2" lang="en" %}}

Tabs help organize related content.

* Concise explanation
* Another brief point

{{< /tab >}}

{{% tab header="Example 3" lang="en" %}}

Here is an example image:

![Spruce shoot example image](layer5-academy-icon.svg)

{{< /tab >}}

{{< /tabpane >}}
