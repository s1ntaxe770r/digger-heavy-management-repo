# dummy unit prod/eu-west-1/service-1238
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1238"
}

inputs = {
  name        = "service-1238"
  environment = "prod"
  region      = "eu-west-1"
}
