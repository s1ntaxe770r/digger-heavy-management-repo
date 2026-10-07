# dummy unit prod/us-east-1/service-1273
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1273"
}

inputs = {
  name        = "service-1273"
  environment = "prod"
  region      = "us-east-1"
}
