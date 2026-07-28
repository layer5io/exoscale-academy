resource "exoscale_sks_nodepool" "workers" {
  zone               = var.zone
  cluster_id         = exoscale_sks_cluster.sks.id
  name               = "workers-${var.name}"
  instance_type      = var.worker_type
  size               = var.workers_number
  security_group_ids = [exoscale_security_group.sg_sks_nodes.id]
}
