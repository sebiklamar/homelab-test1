variable "proxmox" {
  type = object({
    cluster_name = string
    endpoint     = string
    insecure     = bool
    username     = string
    api_token    = string
  })
  sensitive = true
}

variable "nodes" {
  description = "Configuration for cluster nodes"
  type = map(object({
    host_node     = optional(string, "pve2")
    node_type     = string
    datastore_id  = optional(string, "local-enc")
    ip            = string
    mac_address   = string
    vm_id         = number
    cpu           = number
    ram_dedicated = number
    update        = optional(bool, false)
  }))
}

variable "gateway" {
  description = "IPv4 Gateway for nodes"
  type        = string
}

variable "vlan_id" {
  description = "VLAN ID for nodes"
  type        = number
  default     = 0
}
