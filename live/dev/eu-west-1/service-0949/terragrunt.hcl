# dummy unit dev/eu-west-1/service-0949
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.949"
}

inputs = {
  name        = "service-0949"
  environment = "dev"
  region      = "eu-west-1"
}
