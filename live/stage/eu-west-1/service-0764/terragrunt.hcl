# dummy unit stage/eu-west-1/service-0764
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.764"
}

inputs = {
  name        = "service-0764"
  environment = "stage"
  region      = "eu-west-1"
}
