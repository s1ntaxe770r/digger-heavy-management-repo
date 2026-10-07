# dummy unit prod/eu-west-1/service-1440
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1440"
}

inputs = {
  name        = "service-1440"
  environment = "prod"
  region      = "eu-west-1"
}
