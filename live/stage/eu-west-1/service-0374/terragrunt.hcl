# dummy unit stage/eu-west-1/service-0374
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.374"
}

inputs = {
  name        = "service-0374"
  environment = "stage"
  region      = "eu-west-1"
}
