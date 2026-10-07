# dummy unit stage/eu-west-1/service-1514
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1514"
}

inputs = {
  name        = "service-1514"
  environment = "stage"
  region      = "eu-west-1"
}
