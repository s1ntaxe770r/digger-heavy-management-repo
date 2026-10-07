# dummy unit dev/eu-west-1/service-1653
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1653"
}

inputs = {
  name        = "service-1653"
  environment = "dev"
  region      = "eu-west-1"
}
