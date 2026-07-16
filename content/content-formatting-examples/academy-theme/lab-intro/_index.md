---
title: Lab Intro
linkTitle: Lab Intro
weight: 11
description: Academy theme lab-intro shortcode for storing lab introduction content.
draft: true
---

The `lab-intro` shortcode captures its inner content and stores it on the page scratch pad under the key `lab_intro`. This allows layout templates to retrieve and display lab introduction text in a dedicated section of the page.

```text
{{%/* lab-intro */%}}
Welcome to this hands-on lab. In this exercise, you will learn how to deploy a cloud native application using Kubernetes. By the end of this lab, you will be able to create a cluster, deploy workloads, and expose services.
{{%/* /lab-intro */%}}
```

**Example:**

{{% lab-intro %}}
Welcome to this hands-on lab. In this exercise, you will learn how to deploy a cloud native application using Kubernetes. By the end of this lab, you will be able to create a cluster, deploy workloads, and expose services.
{{% /lab-intro %}}

The content above is stored in the page's scratch pad. Layout templates can access it via `.Page.Scratch.Get "lab_intro"` to render it in a dedicated area.
