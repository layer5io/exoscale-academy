---
docType: "Chapter"
id: "Storage"
chapterTitle: "Storage"
description: ""
title: "Storage"
weight: 6
---

### **Overview**

Simple Object Storage (SOS) is an S3-compatible object storage to store your assets, files, and metadata. Furthermore, it is a cost-effective solution to support your application and backup or serve your data from any Exoscale zone with no hidden fees, using your existing S3-compatible tooling and a familiar API.

![image]({{< usestatic "advanced-course/sos.png" >}})

- Simple to use
- High-available, replicated 3 copies of each object
- URLs to files can be configured with ACLs
- ACLs (Access Control List) permission control:
    - **private** - only with API key accessible
    - **public-read** - everyone can read, e.g. for static files
    - **public-read-write** - everyone can read and write -> NOT RECOMMENDED
    - **manual edit** - grant specific permissions to other orgs

### **Use Cases**
**Case – Static Files:**

- Backups
- HTML-Files
- Pictures
- Videos
- Archives of various files (e.g., *.zip, *.tar, and for boot-strapping an app on a server)
- Best suitable for
    - Integrated in the app itself (S3)
- Not suitable for
    - Shared File Systems
    - Storage under Databases

**Case – Static Web Files:**

- Upload static files to S3
- Set ACL public-read either manually or automatically (e.g., WordPress plugin)
- Embed links to files directly in HTML
- Users will download files from SOS bucket
- Providing fast access and high-availability

**Case – Backup Files:**

- Install a backup agent on a VM (e.g., CloudBerry)
- Configure S3 bucket as target
- If restore needed:
- Create VM
- Install agent
- Configure as restore from S3 bucket
- Backup Files are saved securely and privately in the Storage Bucket

### **Access Methods**
**Access Interfaces for SOS:**

- Exoscale UI
- Exoscale CLI
- S3 CLI

**Every programming library which supports S3:**
- Easy to embed in existing apps
   - PHP
   - Java
   - NodeJS
   - Python
   - ...

**Every Application which supports S3:**

- Cyberduck ... browse files with a GUI, delete files, upload large files
- CloudBerry, Acronis, Veeam, ... Backup Software
- Flexify.IO ... is a great way to migrate data back and from on-premises or other cloud storage
- MountainDuck ... mount SOS as Windows Drive
- rclone ... Linux CLI to copy whole directories, synchronize multiple buckets/zones

![image]({{< usestatic "advanced-course/sos_tool_logos.png" >}})

### **Content Delivery Network**
**CDN:**

- Automatically distributed all public-read files to the Akamai network if activated
- 120 locations worldwide- 
- Users can download static files with low latency from the nearest server
- Used when high scalability and low latency are requirements
- Easy to use; just the read-URL of the files changes
- Files must be set to public-read

![image]({{< usestatic "advanced-course/sos_cdn.png" >}})

![image]({{< usestatic "advanced-course/sos_cdn_arch.png" >}})

### **Pre-signed Keys**
**Pre-signed keys can be used to:**

- Give temporary access to private files
- Give unique access to private files (e.g., for cloud-init scripts)
- Key included in the URL
- Must be created using the CLI or a S3 library

![image]({{< usestatic "advanced-course/sos_presign.png" >}})
