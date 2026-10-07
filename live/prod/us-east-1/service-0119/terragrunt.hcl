# dummy unit prod/us-east-1/service-0119
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.119"
}

inputs = {
  name        = "service-0119"
  environment = "prod"
  region      = "us-east-1"
}
