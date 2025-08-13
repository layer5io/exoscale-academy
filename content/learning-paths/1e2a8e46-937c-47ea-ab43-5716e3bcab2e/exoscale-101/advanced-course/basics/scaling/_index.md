---
type: "page"
id: "Scaling"
description: ""
title: "Scaling"
weight: 4
---

Overview

The Exoscale Platform provides two ways of scaling:

- Vertical
- Horizontal 

Which way should be used also depends on your app's architecture, and there is an impact on the operational procedures as well.

![scaling-v-h](scaling-v-h.png)

### Vertical

- Can be done any time, while the instance is stopped
- Billing is always by the second

![scaling-v](scaling-v.png)

### Horizontal

- Can be done any time, no instance stopping necessary
- Billing is always by the second

![scaling-h](scaling-h.png)

### Instance Pools

Multiple compute instances with the same configuration in a group:

- Increase or decrease the amount of compute instances in an Instance Pool any time
- Increasing
  - will automatically boot up an instance with the same parameters again (template, cloud-init, …)
- Decreasing
   - will destroy the oldest VM in the Pool this way the whole pool can be cycled
- Often used together with cloud-init to provision the instances with an application.

![my-instance-pool](my-instance-pool.png)

### Automation
- Can be scaled down and up by sending commands to the Exoscale API or CLI
- Easily and fully automatable out of the box using Kubernetes

![pool-webserver](pool-webserver.png)
