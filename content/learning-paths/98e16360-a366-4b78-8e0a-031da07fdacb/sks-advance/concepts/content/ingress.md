---
docType: "Chapter"
id: "Ingress"
chapterTitle: "Ingress"
description: ""
title: "Ingress"
weight: 2
---

### **Ingress**

We already know the LoadBalancer service in Kubernetes from the SKS starter course. However, LoadBalancer works only on network layer 4; it can not distinguish between different hostnames and paths and cannot terminate SSL traffic. These additional capabilities are provided in Kubernetes by the Ingress service.

The Ingress uses a reverse proxy, like Nginx, to handle network layer 7 balancing in the Kubernetes cluster and the often needed additional, multiple routing paths. If there are advanced routing demands, the Ingress service can provide and handle them.

![image]({{< usestatic "sks-advance/ingress.png" >}})

#### **Ingress**
{{< card 
title="Video: Ingress">}}
<video width="100%" height="100%" controls>
    <source src="https://sos-de-fra-1.exo.io/exoscale-academy/videos/sks_advanced_vid1.mp4?1752688344828" type="video/mp4">
    Your browser does not support the video tag.
</video>
{{< /card >}}