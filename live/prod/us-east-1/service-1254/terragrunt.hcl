# dummy unit prod/us-east-1/service-1254
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1254"
}

inputs = {
  name        = "service-1254"
  environment = "prod"
  region      = "us-east-1"
}
