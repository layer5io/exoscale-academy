---
type: "page"
id: "important-building-blocks"
description: ""
title: "Important Building Blocks"
weight: 1
---

### Important Building Blocks

An application running on Kubernetes is a workload. Whether your workload is a single component or several that work together, on Kubernetes, you run it inside a set of Pods. In Kubernetes, a Pod represents a set of running containers on your cluster.

A critical fault on the node where your Pod runs means that all the Pods on that node fail. Kubernetes treats that level of failure as final: you would need to create a new Pod to recover, even if the node later becomes healthy. However, to make life easier, you don't need to manage each Pod directly.

Instead, you can use workload resources that address a set of Pods on your behalf. These resources configure controllers that ensure the correct number and right kind of Pods are running to match the state you specified. Kubernetes provides several built-in workload resources: Pods, ReplicaSet, Deployment, DaemonSet, Ingress, and CronJob, to name a few of those building blocks.

![kubernetes5](kubernetes5.png)