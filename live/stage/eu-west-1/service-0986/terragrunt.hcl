# dummy unit stage/eu-west-1/service-0986
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.986"
}

inputs = {
  name        = "service-0986"
  environment = "stage"
  region      = "eu-west-1"
}
