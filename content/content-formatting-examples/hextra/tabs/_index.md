---
title: Tabs
linkTitle: Tabs
weight: 5
description: Hextra tabbed interfaces powered by Bootstrap 5 nav-tabs.
draft: true
---

Tabbed interfaces powered by Bootstrap 5 nav-tabs. Each `hextra/tab` is nested inside a `hextra/tabs` container. Tabs support cross-page sync via localStorage when tabs share the same names.

```text
{{</* hextra/tabs */>}}
  {{</* hextra/tab name="Tab One" */>}}Content for tab one.{{</* /hextra/tab */>}}
  {{</* hextra/tab name="Tab Two" */>}}Content for tab two.{{</* /hextra/tab */>}}
{{</* /hextra/tabs */>}}
```

**Tab parameters (`hextra/tab`):**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `name` | Tab label | `Tab <N>` |
| `selected` | Set to `"true"` to pre-select this tab | `false` |

**Code samples across languages:**

{{< hextra/tabs >}}
  {{< hextra/tab name="Go" >}}
  ```go
  package main

  import "fmt"

  func main() {
      fmt.Println("Hello, World!")
  }
  ```
  {{< /hextra/tab >}}
  {{< hextra/tab name="Python" >}}
  ```python
  print("Hello, World!")
  ```
  {{< /hextra/tab >}}
  {{< hextra/tab name="JavaScript" >}}
  ```javascript
  console.log("Hello, World!");
  ```
  {{< /hextra/tab >}}
{{< /hextra/tabs >}}

**Pre-selected tab using `selected="true"`:**

{{< hextra/tabs >}}
  {{< hextra/tab name="macOS" >}}
  ```bash
  brew install hugo
  ```
  {{< /hextra/tab >}}
  {{< hextra/tab name="Linux" selected="true" >}}
  ```bash
  sudo apt install hugo
  ```
  {{< /hextra/tab >}}
  {{< hextra/tab name="Windows" >}}
  ```powershell
  choco install hugo-extended
  ```
  {{< /hextra/tab >}}
{{< /hextra/tabs >}}
