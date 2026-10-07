# dummy unit prod/us-east-1/service-0812
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.812"
}

inputs = {
  name        = "service-0812"
  environment = "prod"
  region      = "us-east-1"
}
