# dummy unit prod/eu-west-1/service-1508
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1508"
}

inputs = {
  name        = "service-1508"
  environment = "prod"
  region      = "eu-west-1"
}
