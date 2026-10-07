# dummy unit prod/us-east-1/service-0865
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.865"
}

inputs = {
  name        = "service-0865"
  environment = "prod"
  region      = "us-east-1"
}
