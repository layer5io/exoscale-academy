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
