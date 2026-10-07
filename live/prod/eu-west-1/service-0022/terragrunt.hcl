# dummy unit prod/eu-west-1/service-0022
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.022"
}

inputs = {
  name        = "service-0022"
  environment = "prod"
  region      = "eu-west-1"
}
