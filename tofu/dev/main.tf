locals {
  env = terraform.workspace == "default" ? "" : "${terraform.workspace}-"
}

module "vms" {
  source = "./vms"

  cluster = var.cluster
  nodes   = var.nodes
  network = var.network
  proxmox = var.proxmox
  env     = local.env
}
