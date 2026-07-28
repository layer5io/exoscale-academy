---
title: Lab Intro
linkTitle: Lab Intro
weight: 11
description: Academy theme lab-intro shortcode for storing lab introduction content.
draft: true
---

The `lab-intro` shortcode captures its inner content and stores it for output elsewhere on the page, so lab introductions can be authored inline with the rest of the lab while rendering in a dedicated section. It emits nothing at the call site — the stored content is rendered by `lab-outro`, which must appear later in the same file.

```text
{{</* lab-intro */>}}
Welcome to this hands-on lab. In this exercise, you will learn how to deploy a cloud native application using Kubernetes. By the end of this lab, you will be able to create a cluster, deploy workloads, and expose services.
{{</* /lab-intro */>}}

{{</* lab-outro */>}}
```

**Example:**

{{< lab-intro >}}
Welcome to this hands-on lab. In this exercise, you will learn how to deploy a cloud-native application using Kubernetes. By the end of this lab, you will be able to create a cluster, deploy workloads, and expose services.
{{< /lab-intro >}}

{{< lab-outro >}}
