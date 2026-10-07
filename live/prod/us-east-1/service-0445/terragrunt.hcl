# dummy unit prod/us-east-1/service-0445
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.445"
}

inputs = {
  name        = "service-0445"
  environment = "prod"
  region      = "us-east-1"
}
