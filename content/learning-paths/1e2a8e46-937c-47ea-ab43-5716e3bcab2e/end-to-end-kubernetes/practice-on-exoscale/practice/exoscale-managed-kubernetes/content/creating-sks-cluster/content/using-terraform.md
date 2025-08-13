---
docType: "Chapter"
title: "Using Terraform"
courseTitle: "Creating SKS Cluster"
weight: 2
tags: [kubernetes, infrastructure]
level: "intermediate"
---

In a new folder, we create the following Terraform configuration files; they contain all the resources to create an SKS cluster and the related components:

- provider.tf specifies the version of the Exoscale provider
- security_group.tf specifies the security group and the rules to be applied to the cluster’s nodes
- cluster.tf defined the cluster’s configuration
- node_pool.tf defines the group of nodes associated to the cluster
- kubeconfig.tf is used to create a local kubeconfig file to access the cluster
- variables.tf defines the input information
- output.tf specifies the information to be displayed back

```terraform {filename="provider.tf"}
terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
      version = "~> 0.60.0"
    }
  }
}

provider "exoscale" {}
```

```terraform {filename="security_group.tf"}
# A security group so the nodes can communicate and we can pull logs
resource "exoscale_security_group" "sg_sks_nodes" {
    name        = "sg_sks_nodes-${var.name}"
    description = "Allows traffic between sks nodes and public pulling of logs"
}

resource "exoscale_security_group_rule" "sg_sks_nodes_logs_rule" {
    security_group_id = exoscale_security_group.sg_sks_nodes.id
    type              = "INGRESS"
    protocol          = "TCP"
    cidr              = "0.0.0.0/0"
    start_port        = 10250
    end_port          = 10250
}

resource "exoscale_security_group_rule" "sg_sks_nodes_calico" {
    security_group_id      = exoscale_security_group.sg_sks_nodes.id
    user_security_group_id = exoscale_security_group.sg_sks_nodes.id
    type                   = "INGRESS"
    protocol               = "UDP"
    start_port             = 4789
    end_port               = 4789
}

resource "exoscale_security_group_rule" "sg_sks_nodes_ccm" {
    security_group_id = exoscale_security_group.sg_sks_nodes.id
    type              = "INGRESS"
    protocol          = "TCP"
    start_port        = 30000
    end_port          = 32767
    cidr              = "0.0.0.0/0"
}
```

```terraform {filename="cluster.tf"}
resource "exoscale_sks_cluster" "sks" {
    zone           = var.zone
    name           = var.name
    version        = var.kube_version
    description    = "Demo cluster ${var.name} / ${var.zone}"
    service_level  = "starter"
    cni            = "calico"
    exoscale_ccm   = true
    exoscale_csi   = true
    metrics_server = true
}
```

```terraform {filename="node_pool.tf"}
resource "exoscale_sks_nodepool" "workers" {
    zone               = var.zone
    cluster_id         = exoscale_sks_cluster.sks.id
    name               = "workers-${var.name}"
    instance_type      = var.worker_type
    size               = var.workers_number
    security_group_ids = [exoscale_security_group.sg_sks_nodes.id]
}
```

```terraform {filename="kubeconfig.tf"}
resource "exoscale_sks_kubeconfig" "sks_kubeconfig" {
    cluster_id = exoscale_sks_cluster.sks.id
    zone       = exoscale_sks_cluster.sks.zone
    user   = "kubernetes-admin"
    groups = ["system:masters"]
}

resource "local_sensitive_file" "sks_kubeconfig_file" {
    filename        = "kubeconfig"
    content         = exoscale_sks_kubeconfig.sks_kubeconfig.kubeconfig
    file_permission = "0600"
}

output "sks_kubeconfig" {
    value = local_sensitive_file.sks_kubeconfig_file.filename
}
```

```terraform {filename="variables.tf"}
variable "kube_version" {
    description = "Version of the Kubernetes cluster"
    type        = string
    default     = ""
    # when default is an empty string, the latest kubernetes version available is used
}

variable "name" {
    description = "Name of the cluster"
    type        = string
    default     = "demo"
}

variable "workers_number" {
    description = "Number of workers in node pool"
    type        = number
    default     = 3
}

variable "worker_type" {
    type    = string
    default = "standard.medium"
}

variable "zone" {
    type    = string
    default = "ch-gva-2"
}
```

```terraform {filename="output.tf"}
output "name" {
    value = var.name
}

output "zone" {
    value = var.zone
}
```

Next, we need to set env variables so that Terraform can use the Exoscale API.

```bash
export EXOSCALE_API_KEY=...
export EXOSCALE_API_SECRET=...
```

Next, we initialize Terraform so it gets the correct version of the provider.

```bash
terraform init
```

We verify everything is correctly configured, simulating the creation.

```bash
terraform plan
```

Then, if no error is raised, we create the cluster and the related resources.

```bash
terraform apply
```

We use the file named “kubeconfig”, created in the current folder, to configure our local kubectl binary.

```bash
export KUBECONFIG=$PWD/kubeconfig
```

Then, we verify we can access the cluster, listing its nodes.

```bash
kubectl get nodes
```

> [!WARNING]
> Once you have completed the workshop, don't forget to delete the cluster and the associated resources with the following command:

```bash
terraform destroy
```

