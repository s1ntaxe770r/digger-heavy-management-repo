# dummy unit prod/eu-west-1/service-0888
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.888"
}

inputs = {
  name        = "service-0888"
  environment = "prod"
  region      = "eu-west-1"
}
