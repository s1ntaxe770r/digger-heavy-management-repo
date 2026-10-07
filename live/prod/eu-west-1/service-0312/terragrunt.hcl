# dummy unit prod/eu-west-1/service-0312
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.312"
}

inputs = {
  name        = "service-0312"
  environment = "prod"
  region      = "eu-west-1"
}
