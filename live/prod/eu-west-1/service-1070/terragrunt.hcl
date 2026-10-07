# dummy unit prod/eu-west-1/service-1070
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1070"
}

inputs = {
  name        = "service-1070"
  environment = "prod"
  region      = "eu-west-1"
}
