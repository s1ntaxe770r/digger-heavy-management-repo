# dummy unit stage/eu-west-1/service-1187
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1187"
}

inputs = {
  name        = "service-1187"
  environment = "stage"
  region      = "eu-west-1"
}
