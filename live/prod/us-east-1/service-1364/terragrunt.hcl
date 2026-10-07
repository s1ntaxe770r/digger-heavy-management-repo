# dummy unit prod/us-east-1/service-1364
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1364"
}

inputs = {
  name        = "service-1364"
  environment = "prod"
  region      = "us-east-1"
}
