locals {
  name_prefix = terraform.workspace == "default" ? "" : "${terraform.workspace}-"
}

module "vms" {
  source = "./vms"

  cluster     = var.cluster
  nodes       = var.nodes
  network     = var.network
  name_prefix = local.name_prefix
}
