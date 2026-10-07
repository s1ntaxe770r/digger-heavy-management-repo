# dummy unit prod/eu-west-1/service-1366
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1366"
}

inputs = {
  name        = "service-1366"
  environment = "prod"
  region      = "eu-west-1"
}
