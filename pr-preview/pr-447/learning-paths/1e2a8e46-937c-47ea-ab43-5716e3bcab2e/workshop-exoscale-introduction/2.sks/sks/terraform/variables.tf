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
