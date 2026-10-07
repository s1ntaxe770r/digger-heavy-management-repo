# dummy unit prod/eu-west-1/service-0245
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.245"
}

inputs = {
  name        = "service-0245"
  environment = "prod"
  region      = "eu-west-1"
}
