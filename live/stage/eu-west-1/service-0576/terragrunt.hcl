# dummy unit stage/eu-west-1/service-0576
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.576"
}

inputs = {
  name        = "service-0576"
  environment = "stage"
  region      = "eu-west-1"
}
