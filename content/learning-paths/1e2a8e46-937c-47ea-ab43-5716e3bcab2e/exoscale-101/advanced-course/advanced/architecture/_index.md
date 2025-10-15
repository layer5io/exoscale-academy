---
type: "page"
id: "Architecture"
description: ""
title: "Architecture"
weight: 2
---


Explained

There are challenges in the cloud. We just have reviewed to most common ones. Building reliable, scalable, and well-performing cloud-based solutions is down to leveraging proven architectures and best practices and thinking of cloud-native approaches to the challenges you want to solve.

### Simple Architecture

Quickly scale up for more performance and easily scale down to safe cost or serve a scenario with fewer performance needs. It is also important to safely store all data and configurations in backups and enable applications to be highly available. All of those requirements are reflected in your architecture.



{{< meshery-design-embed 
        id="embedded-design-226b885c-c04c-458b-b4b9-beeb1b69dbe1"
        src="simple-arch.js"
 >}}

{{< meshery-design-embed
   id="embedded-design-7fc7e3ac-cd62-430b-a573-1dfc4b22b46a"
   src="advanced_design.js"
>}}

{{< meshery-design-embed
   id="embedded-design-2bd32e2b-d52a-405a-81f3-e55375e7aa1e"
   src="advanced_design-1.js"
>}}



### Stateless Architecture

Applications with stateless architecture (stateless apps) allow you to easily scale:

- Keep data in a database or S3 storage
- Don’t save data locally on a disk
- Don’t save session-states locally inside the apps RAM, instead:
    - Use JWT (JSON Web Tokens)
    - Save session state in a database (e.g., Redis)

-> Stateless Apps can be booted multiple times in conjunction with a Load Balancer & Cloud-Init.

### Monolith vs Microservices

Two very common application architecture used for designing solution on-permises and in the cloud, but also very different ones.

{{< meshery-design-embed
  id="embedded-design-bf8f0f98-cb95-40ba-8702-41fda7b4a806"
  src="mono-vs-micro.js"
>}}

### Kubernetes
Scalable Kubernetes Service (SKS)

Potential requirements for your application:

- High-Availability
- Automated vertical and horizontal scaling
- Updates without downtime
- Self-Healing
- Load balancing
- Cost Effectiveness
- Simple development and release process

-> Consider our Managed Kubernetes SKS

-> Courses available: SKS Starter & SKS Advanced

### High Availability & Disaster Recovery
Expect the Unexpected

- Design and develop plans before things happen
- Plan how you want to achieve High-Availability use e.g., - Kubernetes, Load-Balancers
- Backup your files, preferably in a different zone than your main infrastructure
- Weigh out recovery time vs. effort
    - Having a zone-failover in a matter of seconds is a very elaborate and expensive behaviour
    - As a zone-failure is very unlikely, a plan is still needed, but planning in more downtime makes things easier
- Have a disaster recovery plan
