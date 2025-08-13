---
type: "page"
id: "Compute"
description: ""
title: "Compute"
weight: 2
---


### Details
Exoscale offers a range of products related to cloud servers, also known as virtual machines or Compute Instances. These products allow users to easily manage virtual machines, create instance pools, and ensure fault tolerance through anti-affinity groups. SKS and Block Storage options provide scalability, increased computational power, and storage flexibility. IAM and organization management tools allow for secure access control and user management. With various networking products available, users can configure workloads to meet their specific requirements, including secure private networking, firewall management, Network Load Balancer, Elastic IP addresses, and IPv6 support.

Exoscale's cloud infrastructure is simple, fast-performing, and can scale with businesses' needs. Overall, Exoscale offers a comprehensive and flexible cloud computing platform suitable for organizations of all sizes and industries.

NOTE! Here, you can find all the details in the online documentation for COMPUTE.

#### Instances
For better requirement matching, various instance types are available to use:

- **Standard**: Provide a balanced mix of CPU cores, RAM, and SSD local storage to cover a variety of use cases and allow you to implement your architecture.
- **CPU Optimized**: These are optimized for CPU-intensive applications, offering a higher CPU-to-memory ratio. They offer a more significant computational advantage for workloads like batch processing, media decoding and encoding, network appliances, or high-performance web servers.
- **Memory Optimize**d: These are the best performance-to-cost ratio for memory-intensive workloads and are ideal for RAM-intensive applications. They double the memory per core with a price reduction of up to almost 25 % compared to Standard Instances.
- **Storage Optimized**: These are the same mix of CPU and RAM as our Standard Instances but use larger drives, greatly expanding the overall data capacity. Consequently, they lower the cost per GB by more than 60 %.
- **GPU1**: Provides up to 4 dedicated NVIDIA Tesla P100 graphic cards to perform deep learning, high-performance computing, or other types of intensive computation. Save up to 75% compared to the competition, and no long-term commitment.
- **GPU2**: Based on Tesla V100, offers nearly double single-precision and double-precision teraflops compared to GPU1, as well as 640 dedicated Tensor Cores to train AI models that would consume weeks of computing resources in a few days.
- **GPU3**: Is the all-rounder for AR, VR, Simulations, Rendering, AI, and more. Combining the latest Ampere RT Cores, Tensor Cores, and CUDA Cores with 48 GB of graphics memory allows the A40 to deliver a unique set for visual computing workloads.

#### Instance Pools
Exoscale Instance Pools are a service to automatically provision groups of identical Compute instances. You can define several instances in the pool, and the service will keep the required number up and running for you to achieve.

- **High Availability:** Using an Instance Pool ensures that the target quantity of instances is running.
- **Elasticity**: Instance Pools can be scaled up and down dynamically. Hence, the number of instances matches the actual load for better cost efficiency.
NOTE! Here, you can find more details on [Instance Pools](https://community.exoscale.com/product/compute/instances/how-to/instance-pools/).

#### SKS (Scalable Kubernetes Service)
Exoscale's SKS is a managed Kubernetes offering, which consists of:

- Managed Kubernetes control planes
- Dynamic Nodepool attachment
- Control Plane access management facilities
- Full API support
Exoscale's Scalable Kubernetes Service (SKS) provides a powerful and efficient way to deploy and manage your applications quickly. With this fully managed K8s service, you can quickly scale up and down your worker nodes and have complete control over the entire life cycle of your cluster.

Exoscale provides various integration options, including CLI, API, portal, Terraform support, and deep NLB integration.

NOTE! Here, you can find more details on [SKS](https://community.exoscale.com/product/compute/containers/overview/).

#### Block Storage
Exoscale's Block Storage offers a robust and distributed block device solution for Exoscale Compute instances, known for its redundancy and reliability. A Volume, a singular storage unit, can be partitioned and formatted to accommodate directories and files. One of the critical features of Block Storage is the Snapshot, which captures the state of a volume at a specific moment, allowing users to create new volumes based on that state.

NOTE! Here, you can find more details on [Block Storage](https://community.exoscale.com/product/storage/block-storage/overview/).

#### Templates
Exoscale provides various Compute instance templates from which to choose. However, you can customize templates to suit your needs further. In addition to using a Cloud-Init configuration via an instance's user data or a configuration management tool such as Puppet, Ansible, or Terraform, you can also create customized templates. You can use custom templates to launch a custom operating system or custom template configuration on Exoscale, which allows you to deploy ready-to-go instances with minimal startup configuration.

NOTE! Here, you can find more details on [Custom Templates](https://community.exoscale.com/product/compute/instances/how-to/custom-templates/).

#### Security Groups
Exoscale Security Groups provide a modular way to define and compose firewall rules. The rules are managed at the hypervisor level to restrict incoming and outgoing network traffic.

NOTE! Here, you can find more details on [Security Groups](https://community.exoscale.com/product/networking/security-group/).

#### Elastic IP
All Exoscale instances include a native IPv4 address leased from a global pool. This address is strongly coupled to the Compute instance itself. When you destroy the instance, you release the IP address to the global pool without guarantee that you will ever get the same IP address again. However, there are various cases where you may want an IP address to persist. By creating an Elastic IP, you can have a specific IP address for your organization. You can then attach it to one or several instances besides their native IP address.

The simplest use case for this feature is to use an Elastic IP as a persistent IP address you can move between instances. This allows you to circumvent the IP address change when destroying an instance. You can always switch the underlying instance and point traffic to the same address with an Elastic IP.

NOTE! Here, you can find more details on [Elastic IPs](https://community.exoscale.com/product/networking/eip/).

#### Load Balancers
A Network Load Balancer (or NLB) is a Layer 4 (TCP/UDP) load balancer that distributes incoming traffic to Compute instances managed by an Instance Pool. An NLB comprises several services, each bound to an Instance Pool in the same zone as the NLB. Services will efficiently forward connections reaching the NLB’s IP address to the member instances of the Instance Pool.

While the instances remain individually accessible through their public IP, the NLB will expose a single IP address for all services and distribute the incoming traffic across the members of the Instance Pool following the service’s rules. NLB services will update automatically when the Instance Pool scales up or down, distributing traffic across all reachable member instances of the pool and excluding unreachable ones using an integrated health check functionality.

NLB acts only on incoming traffic, so all return traffic from the backend to the client that originated the request goes out directly from the pool member instance.

NOTE! Here, you can find more details on [Network Load Balancer](https://community.exoscale.com/product/networking/nlb/).

#### Private Networks
The Private Network is a classic layer 2 segment: it is as if your instances were attached to a dedicated switch. This means:

- You can use any ethernet-compatible protocol (IPv4, IPv6, NetBIOS).
- Security group rules do not apply to traffic inside private networks.
- Multicast and broadcast are authorized.
- Only your instances are attached to the segment.
- No encryption is performed, but your packets do not leave our data center.
- Private Networks can be managed.
- Private Networks do not span across several zones.
Each instance may provision one or more additional unmanaged and managed network interfaces. This interface is bound to a private network segment shared only with your other instances.

NOTE! Here, you can find more details on [Private Networks](https://community.exoscale.com/product/networking/private-network/).

#### SSH Keypairs
SSH keypairs can authenticate to your Compute instances running Linux without a password, leveraging SSH Public-Key authentication's added security. Public-key authentication is both:

Secure: Breaking an SSH key requires so much time and computational power that these attacks are impractical in the real world. SSH keys are much more secure than even very strong passwords.
Convenient: Instead of managing per-instance passwords or sharing them across your organization, every person who needs access to your servers gives you their public key. You can then set up granular access control by adding those keys only to the relevant instances. Suppose you need to revoke someone's access. In that case, simply revoking their key prevents them from logging in without affecting other people's workflow.
NOTE! Here, you can find more details on [SSH Keypairs](https://community.exoscale.com/product/compute/instances/how-to/ssh-keypairs/).

#### Anti-Affinity
Anti-Affinity groups let you specify which instances should run on separate hosts. For example, in an HA (high availability) cluster, you could keep your instances on distinct hypervisors to ensure more reliable fault tolerance.

NOTE! Here, you can find more details on [Anti-Affinity Groups](https://community.exoscale.com/product/compute/instances/how-to/anti-affinity/).