---
title: File Tree
linkTitle: File Tree
weight: 6
description: Hextra interactive file tree with expandable/collapsible folders.
draft: true
---

An interactive file tree with expandable/collapsible folders. Compose three shortcodes: `hextra/filetree/container`, `hextra/filetree/folder`, and `hextra/filetree/file`.

```text
{{</* hextra/filetree/container */>}}
  {{</* hextra/filetree/folder name="src" */>}}
    {{</* hextra/filetree/file name="main.go" */>}}
  {{</* /hextra/filetree/folder */>}}
  {{</* hextra/filetree/file name="README.md" */>}}
{{</* /hextra/filetree/container */>}}
```

**Folder parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `name` | Folder name | _(required)_ |
| `state` | `"open"` or `"closed"` | `open` |

**Example:**

{{< hextra/filetree/container >}}
  {{< hextra/filetree/folder name="content" >}}
    {{< hextra/filetree/folder name="docs" >}}
      {{< hextra/filetree/file name="_index.md" >}}
      {{< hextra/filetree/file name="getting-started.md" >}}
    {{< /hextra/filetree/folder >}}
    {{< hextra/filetree/folder name="blog" state="closed" >}}
      {{< hextra/filetree/file name="_index.md" >}}
      {{< hextra/filetree/file name="first-post.md" >}}
    {{< /hextra/filetree/folder >}}
  {{< /hextra/filetree/folder >}}
  {{< hextra/filetree/folder name="layouts" >}}
    {{< hextra/filetree/file name="baseof.html" >}}
    {{< hextra/filetree/file name="index.html" >}}
  {{< /hextra/filetree/folder >}}
  {{< hextra/filetree/file name="hugo.yaml" >}}
  {{< hextra/filetree/file name="package.json" >}}
{{< /hextra/filetree/container >}}
