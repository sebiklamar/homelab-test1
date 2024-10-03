module "vms" {
  source  = "./vms"
  nodes   = var.nodes
  network = var.network

  name_prefix = terraform.workspace == "default" ? "" : "${terraform.workspace}-"
}
