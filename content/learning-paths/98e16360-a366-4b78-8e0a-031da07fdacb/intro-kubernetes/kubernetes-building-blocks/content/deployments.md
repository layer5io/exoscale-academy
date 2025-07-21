---
docType: "Chapter"
id: "DEPLOYMENTs"
chapterTitle: "DEPLOYMENTs"
description: ""
title: "DEPLOYMENTs"
weight: 4
---

### **DEPLOYMENTs**

A Deployment is a higher-order abstraction that controls deploying and maintaining a set of Pods. Behind the scenes, it uses a ReplicaSet to keep the Pods running, but it offers sophisticated logic for deploying, updating, and scaling a set of Pods within a cluster. Deployments support rollbacks and rolling updates. Rollouts can be paused if needed.

![image]({{< usestatic "intro-k8/deployment.gif" >}})