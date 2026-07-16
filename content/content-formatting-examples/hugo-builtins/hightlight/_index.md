---
title: Highlight
linkTitle: Highlight
weight: 2
description: Render the Hugo highlight shortcode.
draft: true
---

```text
{{</* highlight go "linenos=table,hl_lines=3" */>}}
package main
import "fmt"
func main() { fmt.Println("hello") }
{{</* /highlight */>}}
```

**Example:**

{{< highlight go "linenos=table,hl_lines=3" >}}
package main

import "fmt"

func main() {
    fmt.Println("hello from the highlight shortcode")
}
{{< /highlight >}}
