---
docType: "Chapter"
id: "Cloud Challenges"
chapterTitle: "Cloud Challenges"
description: ""
title: "Cloud Challenges"
weight: 1
---

### **Overview**

This section highlights the most common problems you can face on your cloud journey. Awareness of those topics should lead to better architecture decisions and storage technology selections. Therefore, the last two sections in this course are dedicated to these topics in more detail. But first, let's jump into the area of cloud problems and build a better understanding of common pitfalls.

### **Special Snowflake**
**Issue Description**

- A single server – installed by hand – undocumented
- IP Addresses or credentials hard-coded in several systems
- Also, cannot transfer IP Addresses to the cloud
- Should only be migrated with planned downtime and roll-back scenario

### **Huge Instance**
**Issue Description**

A customer wants ...

- 512 GB of RAM
- A huge disk (> 15 TB)
- A small instance (i.e., 2 cores) with a big disk (i.e., 512 GB)

It rarely makes sense, especially for databases. Very expensive in the cloud. Sometimes not possible.

### **Backup**
**Issue Description**

- On-premises backups are often done on a full VM image basis. This works poorly in the cloud and will get expensive.
- Backups must be re-tooled to be done on a software basis for at least parts of the recovery process.

### **Migration**
**Issue Description**

Possibilities:

- Transfer of the files of the server themselves (i.e., using rsync on Linux) – the most straightforward solution
- Using a backup tool

Convert an existing image (i.e., VMware) to QCOW2 and create a template:

- For advanced users
- Cannot delete template as long as instances boot from it
- **Custom Templates**
- Must install ***.iso** files locally first, and the resulting image will then be provided as **QCOW2**

### **Network Throughput**
**Issue Description**

- No cloud provider has SLAs for bandwidth or latency between two VMs.
- On-premises, this SLA is easy to guarantee thanks to a dedicated network infrastructure.
- Services need to be built smaller and fault-tolerant.

### **Licensing**
**Issue Description**

- Some software is not licensed in a cloud-friendly way
- Software that requires purchasing a license for every possible CPU core the software COULD run on
- Software that restricts the license or support to officially certified hypervisors only
