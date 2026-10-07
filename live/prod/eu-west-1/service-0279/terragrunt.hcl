# dummy unit prod/eu-west-1/service-0279
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.279"
}

inputs = {
  name        = "service-0279"
  environment = "prod"
  region      = "eu-west-1"
}
