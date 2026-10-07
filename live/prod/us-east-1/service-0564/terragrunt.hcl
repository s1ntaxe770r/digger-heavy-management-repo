# dummy unit prod/us-east-1/service-0564
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.564"
}

inputs = {
  name        = "service-0564"
  environment = "prod"
  region      = "us-east-1"
}
