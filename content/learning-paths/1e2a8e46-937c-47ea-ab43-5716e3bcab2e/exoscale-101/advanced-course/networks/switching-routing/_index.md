---
type: "page"
id: "Switching/Routing"
description: ""
title: "Switching/Routing"
weight: 2
---

Explained
Layer 2 - Switching

- Uses Mac Addresses (hardcoded into devices)
- Only for traffic in a local or private network
- Done by switches

Example Mac address: f8:4d:89:84:eb:8e

Layer 3 - Routing

- Uses IP Addresses
- For traffic and routing in a global matter
- Done by routers

Example IP address: 10.55.22.1/32

### Local Network

- Switches don’t care for IP-Addresses - only Mac-Addresses Layer 2 !!!
- Each computer can talk to the other on the same local network
- And it must be on the same subnet

![switching](switching.png)

### IP Addresses
A subnet for one IP address

![ip-address1](ip-address1.png)

A subnet for two IP addresses

![ip-address2](ip-address2.png)

More subnets

![ip-addresses](ip-addresses.png)

A subnet for 256 IP addresses

![ip-adress256](ip-adress256.png)

### Routing Subnets
- Talk to different subnets --> router (gateway) must be used
- Gateway IP needs to be specified --> Gateway IP must be usually on same subnet

![networking1](networking1.png)
