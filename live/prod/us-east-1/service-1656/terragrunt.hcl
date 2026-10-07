# dummy unit prod/us-east-1/service-1656
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1656"
}

inputs = {
  name        = "service-1656"
  environment = "prod"
  region      = "us-east-1"
}
