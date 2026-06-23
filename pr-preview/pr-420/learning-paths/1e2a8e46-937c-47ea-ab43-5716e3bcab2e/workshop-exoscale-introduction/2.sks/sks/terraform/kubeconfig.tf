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