# dummy unit prod/us-east-1/service-1427
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1427"
}

inputs = {
  name        = "service-1427"
  environment = "prod"
  region      = "us-east-1"
}
