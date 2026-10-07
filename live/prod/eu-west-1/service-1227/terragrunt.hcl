# dummy unit prod/eu-west-1/service-1227
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1227"
}

inputs = {
  name        = "service-1227"
  environment = "prod"
  region      = "eu-west-1"
}
