# dummy unit stage/eu-west-1/service-1530
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1530"
}

inputs = {
  name        = "service-1530"
  environment = "stage"
  region      = "eu-west-1"
}
