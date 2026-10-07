# dummy unit prod/us-east-1/service-0193
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.193"
}

inputs = {
  name        = "service-0193"
  environment = "prod"
  region      = "us-east-1"
}
