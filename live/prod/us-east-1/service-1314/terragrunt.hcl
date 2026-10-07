# dummy unit prod/us-east-1/service-1314
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1314"
}

inputs = {
  name        = "service-1314"
  environment = "prod"
  region      = "us-east-1"
}
