# dummy unit stage/eu-west-1/service-1035
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1035"
}

inputs = {
  name        = "service-1035"
  environment = "stage"
  region      = "eu-west-1"
}
