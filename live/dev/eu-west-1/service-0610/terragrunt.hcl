# dummy unit dev/eu-west-1/service-0610
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.610"
}

inputs = {
  name        = "service-0610"
  environment = "dev"
  region      = "eu-west-1"
}
