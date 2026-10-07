# dummy unit stage/eu-west-1/service-0622
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.622"
}

inputs = {
  name        = "service-0622"
  environment = "stage"
  region      = "eu-west-1"
}
