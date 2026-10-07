# dummy unit prod/us-east-1/service-1286
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1286"
}

inputs = {
  name        = "service-1286"
  environment = "prod"
  region      = "us-east-1"
}
