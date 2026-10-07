# dummy unit prod/us-east-1/service-1414
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1414"
}

inputs = {
  name        = "service-1414"
  environment = "prod"
  region      = "us-east-1"
}
