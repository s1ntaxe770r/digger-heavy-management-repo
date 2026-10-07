# dummy unit prod/us-east-1/service-0056
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.056"
}

inputs = {
  name        = "service-0056"
  environment = "prod"
  region      = "us-east-1"
}
