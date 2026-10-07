# dummy unit prod/us-east-1/service-0284
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.284"
}

inputs = {
  name        = "service-0284"
  environment = "prod"
  region      = "us-east-1"
}
