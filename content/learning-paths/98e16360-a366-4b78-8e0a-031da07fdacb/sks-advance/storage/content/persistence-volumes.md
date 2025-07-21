---
docType: "Chapter"
id: "Persistent Volumes"
chapterTitle: "Persistent Volumes"
description: ""
title: "Persistent Volumes"
weight: 3
---

### **Persistent Volumes**

If you want to run stateful workloads, temporary storage managed by volumes is not suitable for this application category. Running a database, for example, needs persistent volumes and storage technologies like, e.g., Block Storage, iSCSI, NFS.

Under no circumstances should you use non-persistent local storage types for this category of data applications. Kubernetes uses highly dynamic resource scheduling to optimize existing physical resources, which are provided via nodes. Pods get moved around, recycled, deleted, and with this, local data can get lost.

#### **Persistent Volumes**
{{< card 
title="Video: Persistent Volumes">}}
<video width="100%" height="100%" controls>
    <source src="https://sos-de-fra-1.exo.io/exoscale-academy/videos/sks_advanced_vid12.mp4?1752691227611" type="video/mp4">
    Your browser does not support the video tag.
</video>
{{< /card >}}