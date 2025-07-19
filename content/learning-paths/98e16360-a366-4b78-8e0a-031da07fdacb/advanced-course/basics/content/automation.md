---
docType: "Chapter"
id: "Automation"
chapterTitle: "Automation"
description: ""
title: "Automation"
weight: 3
---

### **Overview**

Taking the basic concept of **cloud-init** to the next level by using methods like:

- CLI ... Command Line Interface
- API ... Application Programming Interface
- IaC ... Infrastructure as Code

### **Infrastructure as Code**

Infrastructure as Code (IaC) manages and provides computer data centers through machine-readable definition files rather than physical hardware configuration or interactive configuration tools.

- Specify your whole infrastructure as programming code
- Automated infrastructure management
- Quickly start, modify or delete your whole infrastructure
- Code is also documentation
- Terraform Plugin provided by Exoscale

The approach of **immutable infrastructure** is practiced in this concept by never updating and always replacing.

### **Example**

```
data "exoscale_compute_template" "ubuntu" {
  zone = local.zone
  name = "Linux Ubuntu 20.04 LTS 64-bit"
}
resource "exoscale_security_group" "web" {
  name = "web"
}
resource "exoscale_compute_instance" ”webserver" {
  zone               = local.zone
  name               = "webserver"
  type               = "standard.medium"
  template_id        = data.exoscale_compute_template.ubuntu.id
  disk_size          = 10
  security_group_ids = [
    data.exoscale_security_group.default.id, 
    exoscale_security_group.web.id,
  ]
  user_data          = <<EOF
#cloud-config
package_upgrade: true
packages:
  - nginx
write_files:
  - owner: www-data:www-data
    path: /var/www/html/index.html
    content: |
      Hello world!
runcmd:
  - systemctl restart nginx
EOF
}
```

### **Application Programming Interface** 
**Exoscale Public API**

https://openapi-v2.exoscale.com

- Everything on Exoscale can be controlled via the API
- Full potential for automation
- Implementable in every programming language
- Specifically limit access using IAM

### **Example**
```
import requests
from exoscale_auth import ExoscaleV2Auth
import secret
auth = ExoscaleV2Auth(secret.api, secret.key)
response = requests.get("https://api-de-fra-1.exoscale.com/v2/instance", auth=auth)
print(response.text)
```

### **Command Line Interface**
**Exoscale CLI – exo**

https://community.exoscale.com/documentation/tools/exoscale-command-line-interface/

**exo** is Exoscale’s official command line interface to access all platform services. It allows you to manage your infrastructure from a user-friendly command line tool with the benefits of being scriptable.

```
> exo compute instance create my-new-vm
 ✔ Creating instance "my-new-vm"... 16s
┼──────────────────────┼──────────────────────────────────────┼
│   COMPUTE INSTANCE   │                                      │
┼──────────────────────┼──────────────────────────────────────┼
│ ID                   │ xxx-xxx-xxx-xxx                      │
│ Name                 │ my-new-vm                            │
│ Creation Date        │ 2022-11-30 14:39:19 +0000 UTC        │
│ Instance Type        │ standard.medium                      │
│ Template             │ Linux Ubuntu 22.04 LTS 64-bit        │
│ Zone                 │ ch-gva-2                             │
│ Anti-Affinity Groups │ n/a                                  │
│ Security Groups      │ default                              │
│ Private Networks     │ n/a                                  │
│ Elastic IPs          │ n/a                                  │
│ IP Address           │ 159.100.242.231                      │
│ IPv6 Address         │ -                                    │
│ SSH Key              │ -                                    │
│ Disk Size            │ 50 GiB                               │
│ State                │ running                              │
│ Labels               │ n/a                                  │
┼──────────────────────┼──────────────────────────────────────┼
> exo compute instance list
┼─────────────────┼───────────┼──────────┼─────────────────┼─────────────────┼─────────┼
│        ID       │   NAME    │   ZONE   │      TYPE       │   IP ADDRESS    │  STATE  │
┼─────────────────┼───────────┼──────────┼─────────────────┼─────────────────┼─────────┼
│ xxx-xxx-xxx-xxx │ my-new-vm │ ch-gva-2 │ standard.medium │ 159.100.242.231 │ running │
┼─────────────────┼───────────┼──────────┼─────────────────┼─────────────────┼─────────┼
> exo compute instance delete my-new-vm
[+] Are you sure you want to delete instance "my-new-vm"? [yN]: y
 ✔ Deleting instance "my-new-vm"... 12s
```
