---
title: Cardpane
linkTitle: Cardpane
weight: 7
description: Render the Docsy cardpane shortcode with nested cards.
draft: true
---

```text
{{%/* cardpane */%}}
  {{%/* card header="Step 1" */%}}First card content.{{%/* /card */%}}
  {{%/* card header="Step 2" */%}}Second card content.{{%/* /card */%}}
{{%/* /cardpane */%}}
```

**Example:**

{{% cardpane %}}
{{% card header="Step 1" %}}
Install prerequisites.
{{% /card %}}
{{% card header="Step 2" %}}
Configure the environment.
{{% /card %}}
{{% card header="Step 3" %}}
Run the validation command.
{{% /card %}}
{{% /cardpane %}}
