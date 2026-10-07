# dummy unit prod/us-east-1/service-0237
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.237"
}

inputs = {
  name        = "service-0237"
  environment = "prod"
  region      = "us-east-1"
}
