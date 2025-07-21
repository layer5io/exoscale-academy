---
docType: "Chapter"
id: "REPLICASETs"
chapterTitle: "REPLICASETs"
description: ""
title: "REPLICASETs"
weight: 3
---

### **REPLICASETs**

A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given time to guarantee the availability of a specified number of identical Pods. However, a Deployment is a higher-level concept that manages ReplicaSets and provides declarative updates to Pods and other useful features. Therefore, Deployments are recommended instead of directly using ReplicaSets.

![image]({{< usestatic "intro-k8/replicaset.gif" >}})