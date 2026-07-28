---
title: Lab Outro
linkTitle: Lab Outro
weight: 11
description: Academy theme lab-outro shortcode for rendering lab introduction content.
draft: true
---

The `lab-outro` shortcode renders the content captured earlier by `lab-intro`, marking the point on the page where that content should appear.

```text
{{</* lab-intro */>}}
Welcome to this hands-on lab. In this exercise, you will learn how to deploy a cloud-native application using Kubernetes.
{{</* /lab-intro */>}}

{{</* lab-outro */>}}
```

**Example:**

{{< lab-intro >}}
Welcome to this hands-on lab. In this exercise, you will learn how to deploy a cloud-native application using Kubernetes.
{{< /lab-intro >}}

{{< lab-outro >}}

Shortcodes run in source order, so `lab-outro` must appear after the `lab-intro` it renders. Calling it first logs a build warning and outputs nothing. Only one capture is stored per page, so a second `lab-intro` overwrites the first.