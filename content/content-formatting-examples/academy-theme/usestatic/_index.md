---
title: Usestatic
linkTitle: Usestatic

description: Render the academy-theme usestatic shortcode.
draft: true
---

The `usestatic` shortcode resolves a tenant-scoped static file path, prefixing it with the organization UUID configured in `params.defined_org`.

```text
{{</* usestatic "exoscale-icon.png" */>}}
```

Resolved tenant-scoped static path: {{< usestatic "./exoscale-icon.png" >}}
