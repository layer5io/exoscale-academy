---
docType: "Chapter"
id: "Private Network"
chapterTitle: "Private Network"
description: ""
title: "Private Network"
weight: 3
---

### **Explained**

- Local Network between Instances
- Private networks can be freely created
- Instances must be in the same zone
- No Security Groups are in between
- Layer 2 - like a simple Switch connecting all instances
- Private IP Addresses/Subnets can be freely chosen best from reserved IP ranges
- IP Addresses must be configured via SSH/RDP or Cloud-Init
- Managed Private Networks can automatically provide IPs via DHCP

**Reserved Subnets** - can be used for private networks:

- **10.0.0.0/8**
- **172.16.0.0/12**
- **192.168.0.0/16**

### **Granular DHCP Support via the CLI**

Exoscale's Managed Private Networks support granular DHCP configurations, providing enhanced control over network settings through the CLI.

- [DHCP Option 3] Default Gateway (Router): Sets the IP of the default gateway for external traffic.
- [DHCP Option 6] DNS Servers: Specifies DNS server IPs for domain name resolution.
- [DHCP Option 42] NTP Servers: Defines IPs for time synchronization with NTP servers.
- [DHCP Option 119] Domain Search List: Supplies a list of domain suffixes supporting multi-domain environments (limited to 255 octets).

### **Gateway Considerations**
**An additional Gateway is required when:**

- Connecting private networks over different zones
- Connecting private networks to the company network
- Connecting a private network to the internet
- Connecting private networks together

**As Gateway, another instance can be used:**

- Ubuntu with routing configuration
- VyOS Router templates