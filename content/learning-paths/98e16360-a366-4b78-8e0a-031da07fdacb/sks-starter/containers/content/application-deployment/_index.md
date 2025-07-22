---
id: "Application Deployments"
description: ""
title: "Application Deployments"
weight: 1
tags: [docker, deployment, containers]
level: [intermediate]
categories: [exoscale,kubernetes]
---


### Application Deployment

#### Traditional Deployment

Early on, organizations ran applications on physical servers. There was no way to define resource boundaries for applications in a physical server, and this caused resource allocation issues. For example, if multiple applications run on a physical server, there can be instances where one application would take up most of the resources, and as a result, the other applications would underperform. A solution for this would be to run each application on a different physical server. But this did not scale as resources were underutilized, and it was expensive for organizations to maintain many physical servers.

#### Virtualized Deployment

As a solution, virtualization was introduced. It allows you to run multiple Virtual Machines (VMs) on a single physical server's CPU. Virtualization allows applications to be isolated between VMs and provides a level of security as the information of one application cannot be freely accessed by another application. Virtualization allows better utilization of resources in a physical server and allows better scalability because an application can be added or updated easily, reduces hardware costs, and much more. With virtualization, you can present a set of physical resources as a cluster of disposable virtual machines. Each VM is a full machine running all the components, including its own operating system, on top of the virtualized hardware.

#### Container Deployment

Containers are similar to VMs, but they have relaxed isolation properties to share the Operating System (OS) among the applications. Therefore, containers are considered lightweight. Similar to a VM, a container has its own file system, share of CPU, memory, process space, and more. As they are decoupled from the underlying infrastructure, they are portable across clouds and OS distributions.

#### App Deployment

{{< card 
title="Video: Application Deployment Overview">}}
<video width="100%" height="100%" controls>
    <source src="https://sos-de-fra-1.exo.io/exoscale-academy/videos/sks_starter_vid0.mp4?1752340619870" type="video/mp4">
    Your browser does not support the video tag.
</video>
{{< /card >}}