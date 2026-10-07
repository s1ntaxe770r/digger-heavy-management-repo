# dummy unit stage/eu-west-1/service-1563
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1563"
}

inputs = {
  name        = "service-1563"
  environment = "stage"
  region      = "eu-west-1"
}
