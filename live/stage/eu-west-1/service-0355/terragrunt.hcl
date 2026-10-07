# dummy unit stage/eu-west-1/service-0355
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.355"
}

inputs = {
  name        = "service-0355"
  environment = "stage"
  region      = "eu-west-1"
}
