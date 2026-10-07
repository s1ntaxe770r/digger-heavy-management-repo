# dummy unit dev/eu-west-1/service-1382
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1382"
}

inputs = {
  name        = "service-1382"
  environment = "dev"
  region      = "eu-west-1"
}
