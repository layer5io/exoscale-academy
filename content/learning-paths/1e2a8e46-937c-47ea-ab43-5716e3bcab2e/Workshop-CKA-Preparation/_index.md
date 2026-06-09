---
type: "learning-path"
title: "Workshop CKA Preparation"
description: "This hands-on workshop will help you preparing for the Certified Kubernetes Administrator (CKA) certification"
weight: 11
id: "5a817fbd-7754-4bf2-8285-be3074c854ea"
tags: ["kubernetes", "cka"]
level: "beginner"
no_list: true
banner: "kubernetes-icon.svg"
---

Welcome to this hands-on workshop where you'll prepare for the **Certified Kubernetes Administrator** (CKA) certification. This workshop is organized into the following sections, which you can access directly by clicking on the corresponding card. If you want to get the most out of this preparation, follow the sections in order, starting with the presentation of the [Kubernetes certifications](./1.certifications).

{{< hextra/cards >}}
    {{< hextra/card    title="Certifications" 
                subtitle="Get an overview of the existing Kubernetes certifications and what you need to learn for the CKA."
                icon="kubernetes"
                link="./1.certifications"
    >}}
    {{< hextra/card    title="Create a cluster" 
                subtitle="Build a 3-node kubeadm cluster from scratch."
                icon="kubernetes"
                link="./2.creation"
    >}}
    {{< hextra/card    title="Workloads" 
                subtitle="Create and manage Pods, Deployments, and other workload resources." 
                icon="pod"
                link="./3.workload"
    >}}
    {{< hextra/card    title="Scheduling Pods"
                subtitle="Learn Pod placement strategies using labels, taints, affinities and more." 
                icon="pod"
                link="./4.scheduling"
    >}}
    {{< hextra/card    title="Networking" 
                subtitle="Understand Pod to Pod communication, Service discovery, Ingress resources." 
                icon="service"
                link="./5.networking"
    >}}
    {{< hextra/card    title="Storage" 
                subtitle="Understand StorageClass, PV and PVCs stateful applications."
                icon="pvc"
                link="./6.storage"
    >}}
    {{< hextra/card    title="Security" 
                subtitle="Create Network Policies and RBAC rules."
                icon="pvc"
                link="./7.security"
    >}}
    {{< hextra/card    title="Configuration" 
                subtitle="Tools to manage complex applciations."
                icon="pvc"
                link="./8.configuration"
    >}}
    {{< hextra/card    title="Troubleshooting" 
                subtitle="Troubleshoot clusters components, nodes, network and applications." 
                icon="terminal"
                link="./9.troubleshooting"
    >}}
    {{< hextra/card    title="Operations" 
                subtitle="Perform cluster upgrade and backup/restore of etcd." 
                icon="terminal"
                link="./10.operations"
    >}}
    {{< hextra/card    title="Challenges" 
                subtitle="Break your cluster and try to fix it." 
                icon="terminal"
                link="./11.challenges"
    >}}
{{< /hextra/cards >}}

{{< 1e2a8e46-937c-47ea-ab43-5716e3bcab2e/slack-invite link="https://join.slack.com/t/exoscale-org/shared_invite/zt-34s6jetvl-tNP_TpfweeAKNnPb593j9A">}}
