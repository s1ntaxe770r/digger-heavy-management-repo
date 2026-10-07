# dummy unit stage/eu-west-1/service-1061
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1061"
}

inputs = {
  name        = "service-1061"
  environment = "stage"
  region      = "eu-west-1"
}
