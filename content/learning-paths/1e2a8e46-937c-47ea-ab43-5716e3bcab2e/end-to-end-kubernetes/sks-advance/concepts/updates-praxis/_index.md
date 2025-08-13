---
type: "page"
id: "Updates Praxis"
description: ""
title: "Updates Praxis"
weight: 11
---

### Updates Praxis

The **kubectl** command provides rollout and update capabilities for containerized applications and the associated Kubernetes constructs. Users expect applications to be available all the time, and developers deploy new versions of them several times a day.

The concept of rolling updates allows an update with zero downtime by incrementally updating Pods with new ones. With the command **> kubectl rollout ...,** you then can check the status of your deployment. You can also undo your deployment in an unsuccessful rollout and set it back to an older version.

The declarative nature of Kubernetes and the tracking of your actions makes undo's and redo's possible to keep the desired state of your application while extending or fixing the very same application. And, if necessary, make changes to the actual condition in a controlled way to reach the desired state again. Suppose done right with zero downtime for your application.

![updates-praxis](updates-praxis.png)

The video below demonstrates this rather complex sounding process in some of its possible variations. Therefore, a more extended sequence was necessary to show all the essential concepts coming together and let you experience the flexibility and stability of a Kubernetes environment.

#### Updates Praxis
{{< card 
title="Video: Updates Praxis">}}
<video width="100%" height="100%" controls>
    <source src="https://sos-de-fra-1.exo.io/exoscale-academy/videos/sks_advanced_vid10.mp4?1752690413954" type="video/mp4">
    Your browser does not support the video tag.
</video>
{{< /card >}}