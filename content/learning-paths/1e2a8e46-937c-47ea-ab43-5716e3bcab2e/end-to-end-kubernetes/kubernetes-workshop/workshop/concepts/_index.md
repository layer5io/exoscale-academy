---
type: "page"
title: "Concepts"
description: "Kubernetes Basic Concepts"
weight: 1
id: "concepts"
---

## History

Kubernetes also called *k8s* (a "k" followed by 8 chars and a "s") or simply *kube* means "Helmsman" in Greek. It is a container orchestrator inspired by Google Borg System which were orchestrating billions of containers on Google infrastructure.  

Version *v1.0.0* of Kubernetes was released in July 2015, the last version as of today (October 2024) is *v1.31.1*. The release cycle is quite fast with 3 minor releases per year.

## Main functionalities

Kubernetes is a container orchestrator offering main functionalities, such as:

- Management of applications running in containers
- Self-healing
- Service discovery
- Usage of Secrets and Configurations
- Long-running process and batch jobs
- Role Based Access Control (RBAC)
- Storage Orchestration

## Manages applications in production

![environments](environments.png)
## Major project in the open-source ecosystem

Kubernetes is the first graduated project within the [CNCF](https://cncf.io/projects), it was followed by major players like [etcd](https://etcd.io) and [Prometheus](https://prometheus.io/) 

![cncf](cncf.png)
## What is a Kubernetes cluster made of ?

A Kubernetes cluster is composed of nodes, where a node is either a virtual machine or a bare metal server. A node can belong to the Control Plane which run processes in charge of managing the cluster and the applications running on it. Or, a node can be a Worker dedicated to run Pods, a group of containers sharing a network stack and storage.

![cluster](cluster.png)

## How to access a cluster

A cluster usually comes with a kubeconfig file which contains all the information to communicate with the cluster API Server. This file can be used to configure the standard *kubectl* binary to manage the cluster. The kubeconfig file can also be used with tools like [Meshery](https://meshery.io), [k9s](https://k9scli.io/), [Mirantis Lens](https://k8slens.dev/), ... which give a higher level view of the cluster.

<!-- ![access](access.png) -->
{{< meshery-design-embed
id="embedded-design-9f7e3466-41e5-42cb-8512-8ba952b1c198"
src="image-2.js"
>}}

## Various workload resources for different use cases

To run a Pod we often rely on a higher level resource, instead of running it directly. The workload resources are:

- Deployment : web server
- DaemonSet : one agent per node
- Job / CronJob : batch
- StatefulSet : stateful application

<!-- ![workloads](workloads.png) -->
{{< meshery-design-embed
id="embedded-design-1a9cfdfb-daaf-4c19-be93-6d9bc0f7b94d"
src="image-3.js"
>}}

A request that reaches a Service is load-balanced between the exposed Pods

<!-- ![service](service.png) -->
{{< meshery-design-embed
id="embedded-design-7dd69208-b63e-49b9-8225-8b1979966f28"
src="image-4.js"
>}}



A Pod can use several resources

- ConfigMap : contains configuration data
- Secret : contains sensitive data
- PersistentVolumeClaim / PersistentVolume : storage management

<!-- ![pod-resources](pod-resources.png) -->
{{< meshery-design-embed
id="embedded-design-c30516a2-2448-47d2-8fce-6758808c4614"
src="image-5.js"
>}}


## Several types of resources

![summary](summary.png)

## An application runs in a Namespace

<!-- ![namespace](namespace.png) -->
{{< meshery-design-embed
id="embedded-design-294946e9-2079-4e6e-8a44-489fbdcf9e3f"
src="image-7-namespace.js"
>}}


## Resource creation

Each resource is defined in a YAML specification which is sent to the API Server using the kubectl binary.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: www
spec:
  containers:
  - name: www
    image: nginx:1.24
```

```bash
kubectl apply -f www.yaml
```
