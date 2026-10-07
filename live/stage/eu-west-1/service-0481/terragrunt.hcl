# dummy unit stage/eu-west-1/service-0481
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.481"
}

inputs = {
  name        = "service-0481"
  environment = "stage"
  region      = "eu-west-1"
}
