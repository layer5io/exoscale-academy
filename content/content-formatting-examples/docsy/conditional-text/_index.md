---
title: Conditional Text
linkTitle: Conditional Text
weight: 6
description: Docsy conditional-text shortcode for environment-specific content.
draft: true
---

The `conditional-text` shortcode renders content only when the `include-if` value matches the site's `params.buildCondition`. This is useful for showing content specific to certain build environments or feature flags.

```text
{{</* conditional-text include-if="examples" */>}}
This text only appears when buildCondition is set to "examples".
{{</* /conditional-text */>}}
```

**Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `include-if` | Condition string to match against `params.buildCondition` | _(required)_ |

**Example:**

{{< conditional-text include-if="examples" >}}
This sentence is rendered because `params.buildCondition` is set to `examples`.
{{< /conditional-text >}}

If the text above is not visible, the site's `params.buildCondition` does not match `"examples"`.
