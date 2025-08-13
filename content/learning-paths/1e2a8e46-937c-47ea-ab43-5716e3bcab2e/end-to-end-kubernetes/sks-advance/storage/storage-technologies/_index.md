---
type: "page"
id: "Storage Technologies"
description: ""
title: "Storage Technologies"
weight: 4
---

### Storage Technologies

Kubernetes, due to its extensible nature, can leverage a multitude of storage technologies. Especially for the persistent volume scenarios, there are various solutions available. Of course, there are also open-source variants.

- **Linstor** makes building, running, and controlling block storage with native integration to Kubernetes simple. Linstor is open-source software designed to manage block storage devices and provide persistent block storage for Kubernetes environments. LINBIT builds upon 20 years of experience developing and supporting production storage and high availability workloads, combined with modern best practices from the community.

- **Longhorn** is an official CNCF project that delivers a powerful cloud-native distributed storage platform for Kubernetes that can run anywhere. When combined with Rancher, Longhorn makes deploying highly available persistent block storage in your Kubernetes environment easy, fast, and reliable.

- **OpenEBS** is the leading open-source project which offers cloud-native storage solutions for Kubernetes deployments. Unlike any other storage option, OpenEBS can easily be integrated with Kubernetes, making it a highly rated cloud-native storage on the CNCF landscape.

- **Rook** is a top-rated open-source storage solution for Kubernetes, but it differs from others due to its storage orchestrating capacities. In addition, Rook is a production-grade solution transforming storage volumes into self-scaling, self-healing, and self-managing storage systems to integrate with the Kubernetes environment perfectly.

- **GlusterFS** is a notable open-source project that provides a mechanism to deploy native storage services onto a Kubernetes cluster quickly. It is a precisely defined file storage framework that can scale to petabytes, utilize any on-disk file system backing different features, and handle many users.

- **Portworx** is another container storage solution intended for Kubernetes, with a focus on highly available clusters. It is host-attached storage, where every volume directly maps to the host to which it is attached. These volumes are accessed through I/O technology and provide auto-tuning based on the I/O protocol used.

Many more technologies are available. A complete, up-to-date list of supported technologies is on kubernetes-storage. In the following two units, we picked Longhorn as an example and demonstrate how to use such a storage technology with SKS.
