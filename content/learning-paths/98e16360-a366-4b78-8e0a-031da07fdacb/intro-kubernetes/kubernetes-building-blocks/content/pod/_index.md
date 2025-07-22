---
id: "pod"
description: ""
title: "PODs"
weight: 2
---

### PODs

Pods are the basic building blocks to run containers inside of Kubernetes. Every Pod holds at least one container and controls the execution of that container. If all containers terminate, the Pod terminates too. Mounting storage, setting environment variables, and feed information into the container are all functions provided by the Pod.

![image](pod.png)

Pods are the smallest deployable units of computing that you can create and manage in Kubernetes. Pods in a Kubernetes cluster are used in two main ways:

- **Pods that run a single container**

The "one-container-per-Pod" model is the most common Kubernetes use case; in this case, you can think of a Pod as a wrapper around a single container; Kubernetes manages Pods rather than managing the containers directly.

- **Pods that run multiple containers that need to work together**

A Pod can encapsulate an application composed of multiple co-located containers tightly coupled and need to share resources. These co-located containers form a single cohesive unit of service—for example, one container serving data stored in a shared volume to the public. In contrast, a separate sidecar container refreshes or updates those files. The Pod wraps these containers, storage resources, and an ephemeral network identity together as a single unit.