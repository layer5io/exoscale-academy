---
type: "page"
id: "IAM"
description: ""
title: "IAM"
weight: 6
---

### Details

Exoscale provides various interaction methods with its platform, including programmatic access via the command line, your preferred programming language, integrations with third-party tools, and a user-friendly web portal. Regardless of the method, Identity and Access Management (IAM) will define permissions and actions for individuals and services on your platform.

IAM is composed of 2 primary building blocks:

- **Roles** act as a container for a single policy and add some options.
- **Policies** are rules describing what can and cannot be done.
Exoscale IAM, or Identity and Access Management, is a system that manages access to resources within the Exoscale cloud environment. Exoscale is a cloud service provider that offers various services, including computing, storage, and network solutions.

Exoscale IAM enables administrators to control who has access to specific resources, manage user permissions, and enforce security policies. Here are some key features and functions of Exoscale IAM:

- **User Management**
- **Roles and Policies**
- **Access Control**
- **Security and Compliance**
- **API Access**
Using Exoscale IAM, organizations can effectively safeguard their cloud resources, comply with regulatory requirements, and streamline user access management, ultimately enhancing the security and efficiency of their cloud operations.

### IAM Users
So far, IAM has allowed you to create keys that could be restricted and fine-tuned according to their permissions. While practical and powerful, IAM Keys have always been intended for programmatic usage, while users could not be limited in scope beyond the predefined roles:

- **Owner**
- **Tech**
- **Billing** (former Admin)
Now, we are enhancing the IAM functionality, bringing the same powerful features to organizations' users, offering you more control and flexibility. This means you can now limit a user's scope of action in the web portal like you would for an IAM Key, with precise and fine-grained IAM Roles.

Typical use cases include:

- give a user read-only access
- generally, fine-tune what a user can see or do in the web portal
It is important to note that:

- All new organizations will immediately start with IAM users
- All existing organizations will be migrated
NOTE! Here, you can find all the details in the online documentation for [IAM](https://community.exoscale.com/product/iam/).