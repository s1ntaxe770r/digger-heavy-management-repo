# dummy unit prod/eu-west-1/service-1513
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1513"
}

inputs = {
  name        = "service-1513"
  environment = "prod"
  region      = "eu-west-1"
}
