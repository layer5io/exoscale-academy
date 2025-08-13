---
type: "page"
id: "daemonsets"
description: ""
title: "DEAMONSETs"
weight: 5
---

### DEAMONSETs

DaemonSets have many use cases – one frequent pattern is to use DaemonSets to install or configure each host node. DaemonSets provide a way to ensure that a Pod copy is running on every node in the cluster. As a cluster grows and shrinks, the DaemonSet spreads these specially labelled Pods across all nodes.

![deamonset](deamonset.png)