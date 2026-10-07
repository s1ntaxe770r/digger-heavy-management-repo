# dummy unit prod/eu-west-1/service-0400
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.400"
}

inputs = {
  name        = "service-0400"
  environment = "prod"
  region      = "eu-west-1"
}
