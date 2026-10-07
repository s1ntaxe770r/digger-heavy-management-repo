# dummy unit stage/eu-west-1/service-1453
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1453"
}

inputs = {
  name        = "service-1453"
  environment = "stage"
  region      = "eu-west-1"
}
