# dummy unit dev/eu-west-1/service-0526
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.526"
}

inputs = {
  name        = "service-0526"
  environment = "dev"
  region      = "eu-west-1"
}
