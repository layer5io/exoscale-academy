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
