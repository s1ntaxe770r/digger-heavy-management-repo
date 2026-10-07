# dummy unit prod/eu-west-1/service-0199
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.199"
}

inputs = {
  name        = "service-0199"
  environment = "prod"
  region      = "eu-west-1"
}
