# dummy unit stage/eu-west-1/service-1150
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1150"
}

inputs = {
  name        = "service-1150"
  environment = "stage"
  region      = "eu-west-1"
}
