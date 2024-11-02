terraform {
  source = "git::git@github.com:sebiklamar/terraform-modules-test.git//modules/vms?ref=v0.0.2"
}

include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path           = find_in_parent_folders("env.hcl")
  expose         = true
  merge_strategy = "no_merge"
}

inputs = {
  env = include.env.locals.env
}
