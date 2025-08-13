---
type: "page"
id: "Compute"
description: ""
title: "Compute"
weight: 1
---

Overview

The Compute product is for scalable, on-demand cloud servers in a privacy-minded public cloud setting to host everything from simple applications to complex architectures. Start a virtual machine (VM) in seconds, and integrate current on-premises or hybrid-cloud deployments using standard DevOps tooling, would that be Terraform, Kubernetes, Ansible, or the tools of your choice.

### VM Creation – Essential Properties

- Name - Easier Server Identification
- Template - Linux, Windows, Custom, Marketplace
- Zone - Data Center Locations
- Instance type - RAM, CPU Core Configurations (T-Shirt Sizes)
- Disk size- Size Configurations

![user-interface1](user-interface1.png)

### VM Creation - Further Properties

- SSH Keys
- Public IP Assignemnt
- Private Networks
- Security Groups
- Anti-Affinity Groups
- User Data

![user-interface2](user-interface2.png)


### EXAMPLE - create a Linux VM and install a web server

Walking through a step-by-step example for creating a new cloud server (VM) with a web server manually:

- Create Security-Group for HTTP and SSH access
- Create SSH Keyfile for access
- Start a Virtual Machine
- Install a Web Server via SSH

### Security Group

Security Groups are the VMs firewall, all VMs are linked to at least one Security Group (default).

default

- BLOCK all incoming traffic
- ALLOW all outgoing traffic

![security-group1](security-group1.png)

![security-group2](security-group2.png)

Security Group - configure a new sample-group

![sample-group1](sample-group1.png)

![sample-group2](sample-group2.png)

![sample-group3](sample-group3.png)

![sample-group-finish](sample-group-finish.png)

For our example:

- ALLOW 22 for everyone
- ALLOW 80 for everyone


### SSH Keys

How-to create an ssh key pair

![ssh-keygen](ssh-keygen.png)

Linux and Mac

- Use the command line tool ssh-keygen

Windows

- Use the program PuTTYgen (puttygen.exe) and export the OpenSSH public key

### Create SSH Key - my-key

![create-my-key](create-my-key.png)

### Import SSH Key - public key

![public-key](public-key.png)


![import-key](import-key.png)

NOTE: NEVER share the PRIVATE KEY with anyone !!!

### VM Creation - Example
- Hostename = my-new-vm
- Template = Linux Ubuntu 20.04 LTS 64-bit
- Zone = DE-FRA-1
- Instance Type = STANDARD - Tiny
- Disk = 10 GB
- Keypair = my-key
- Security Groups = sample-group


![example-vm1](example-vm1.png)


![example-vm2](example-vm2.png)

### VM Usage

Connecting to the Server depends on your client OS used to access your VM. Adding the SSH Key and accessing your VM follows a different sequence of tools used. Below you see examples of the most common access scenarios.

### Access from Linux or Mac

Run the following commands:

*> ssh-add id_rsa*

*> ssh root@SERVER-IP*

### Access from Windows

- Start the PuTTY authentication agent program Pageant and add the SSH Key
- Start the program PuTTY and enter the Server IP

![access-server](access-server.png)

### Web Server Install
Installing NGINX web server via the apt-get package manager:

*> apt install -y nginx*

*> systemctl start nginx*

![install-nginx](install-nginx.png)

*Web Server accessible via server IP:*

![welcome-nginx](welcome-nginx.png)

### EXAMPLE - create a Windows Server VM and access it

Creating a Windows VM follows the same Step-by-Step pattern as a Linux VM; you select an appropriate Windows Server template. The creation process runs in the same way.

![windows-server](windows-server.png)

To access the Windows Server VM, you must configure a Security Group that allows port 3389/TCP. This is the port for the remote access protocol used by the Microsoft Remote Desktop application. To connect as administrator to the Windows Server VM, use the shown password and the Microsoft Remote Desktop application.

![remote-desktop](remote-desktop.png)


### Virtual Machines (VMs)

Frequently used applications of VMs on Exoscale are:

- Web Servers
- Machine Learning
- Processing/Storing Data
- Firewalls/Gateways
- Terminal Servers
- ...

### Anti-Affinity Groups

How can you increase availability and fault tolerance for your application?

Using more than one instance is the start of redundancy running them on different hosts = different hypervisors increases the availability. The feature for controlling this behavior is called Anti-Affinity Group. Instances in one Anti-Affinity group are all placed by the platform on different hosts, which increases the resilience against the failure of your application.

Anti-Affinity Group Specs:

- Anti-Affinity Groups can be freely created and VMs - assigned to it
- Anti-Affinity Groups support also Instance-Pools
- Up to 8 VMs can be in the same Anti-Affinity Group
- All 8 VMs will then be on different hypervisors
