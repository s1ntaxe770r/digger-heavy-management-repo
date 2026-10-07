# dummy unit stage/eu-west-1/service-0005
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.005"
}

inputs = {
  name        = "service-0005"
  environment = "stage"
  region      = "eu-west-1"
}
