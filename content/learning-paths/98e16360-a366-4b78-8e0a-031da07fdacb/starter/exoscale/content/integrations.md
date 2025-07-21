---
docType: "Chapter"
id: "Integrations"
chapterTitle: "Integrations"
description: ""
title: "Integrations"
weight: 6
---


### **Available for Exoscale**

DevOps and Automation Tools we use and support.

![integration]({{< usestatic "starter/integration.png" >}})

#### **Container Orchestration**
Cloud native tools are embracing containers as a great way to build, ship, and run applications.

**Kubernetes**: One of the most active open-source projects, Kubernetes or k8s for short, offers container cluster management with powerful yet simple concepts. Exoscale provides a managed Kubernetes offering.

**Cloud Controller Manager**: The Kubernetes Cloud Controller Manager (CCM) implementation for Exoscale. This component enables a tighter integration of Kubernetes clusters with the Exoscale Compute platform.

**NGINX Ingress Controller**: The official way of deploying the NGINX Ingress Controller on Exoscale.

#### **Automation and Configuration Management**
As DevOps ourselves, we use automation and configuration management tools every day. On our platform you will be able to use the best tools available.

**Terraform**: Written in GO, Terraform enables you to configure the full spectrum of your infrastructure from compute instances to their DNS entries. It takes your infrastructure and makes it converge towards its desired configuration state.

**Packer**: The Exoscale Packer builder plugin can be used to build Exoscale instance templates.

**Vault**: The Vault plugin enables a secret's backend for Exoscale. This plugin generates Exoscale IAM API keys which can be restricted to specific operations according to predefined roles.

**Pulumi**: Pulumi, an open source IaC tool, helps you to build, deploying and managing cloud applications and infrastructure. It allows easier collaboration and reduces cloud complexity.

**Crossplane**: Crossplane is a cloud native control plane framework to easily build control planes without needing to write code. The integration is provided by VSHN on the Marketplace.

#### **Clients and Libraries**
We support some of the best clients out there. Follow the link and find out how to integrate them your workflow with the Exoscale cloud platform.

**Traefik**: Traefik is a modern HTTP reverse proxy and load balancer that easily integrates with your existing infrastructure components and runs smoothly on Exoscale.

**CLI**: Easy to use CLI interface written in Golang that lets you browse and control all Exoscale resources.

**Egoscale**: The official Go wrapper for the Exoscale public cloud API. Egoscale powers our CLI and many other libraries and integrations based on Go, like Kubernetes External DNS or Docker Machine.

**Python**: The official Python wrapper for the Exoscale API.

**Lego**: Lego is an ACME library and standalone application written in Go, enabling you to automate ACME challenges and certificates deployments on Exoscale, eventually using our DNS service.

#### **Third party platforms integration**
Discover how to integrate our cloud services with some great third-party platforms.

**GuruSquad**: GS RichCopy 360 Enterprise provides enterprise-class unstructured data backup, data migration, and data replication. Whether the data is being migrated from another cloud provider or on-premise, GuruSquad can simplify all the data migration and backup jobs from a single pane of glass.

**Nuvla.io**: Nuvla.io, by technology partner Sixsq, is an edge-to-cloud application deployment platform. Real edge and multi-cloud solution built on open source software, Nuvla.io can deploy simple to complex containerized applications repeatedly with orchestration.

#### **Extend Simple Object Storage**
Using these set of certified tools with SOS, you can browse, backup or map object storage from various OS and environments.

**Cyberduck**: This free software provides a versatile GUI for S3 compatible transfers as well as Duck, a CLI tool for power users. Both are available on Windows, Linux and macOS platforms.

**Flexify.IO** Flexify.IO is a great way to migrate data to and from on-premises or other cloud storage to Exoscale Object Storage. Flexify.IO does the magic - and optimizes traffic and bandwidth on the way.

**CloudBerry**: CloudBerry provides an extensive palette of tools for integrating Object Storage with Windows. You can browse storage, map a drive like a simple share or even backup your complete OS and application.