# dummy unit prod/us-east-1/service-0074
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.074"
}

inputs = {
  name        = "service-0074"
  environment = "prod"
  region      = "us-east-1"
}
