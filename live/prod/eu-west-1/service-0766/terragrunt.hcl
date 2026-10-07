# dummy unit prod/eu-west-1/service-0766
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.766"
}

inputs = {
  name        = "service-0766"
  environment = "prod"
  region      = "eu-west-1"
}
