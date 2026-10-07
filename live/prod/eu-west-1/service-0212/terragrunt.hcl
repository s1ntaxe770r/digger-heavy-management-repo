# dummy unit prod/eu-west-1/service-0212
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.212"
}

inputs = {
  name        = "service-0212"
  environment = "prod"
  region      = "eu-west-1"
}
