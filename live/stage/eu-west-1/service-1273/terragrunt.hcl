# dummy unit stage/eu-west-1/service-1273
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1273"
}

inputs = {
  name        = "service-1273"
  environment = "stage"
  region      = "eu-west-1"
}
