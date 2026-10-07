# dummy unit prod/us-east-1/service-1577
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1577"
}

inputs = {
  name        = "service-1577"
  environment = "prod"
  region      = "us-east-1"
}
