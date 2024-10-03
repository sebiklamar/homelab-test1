module "vms" {
  source  = "./vms"
  nodes   = var.nodes
  gateway = var.gateway
  vlan_id = var.vlan_id
}
