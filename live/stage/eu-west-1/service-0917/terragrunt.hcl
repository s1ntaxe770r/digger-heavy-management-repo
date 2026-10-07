# dummy unit stage/eu-west-1/service-0917
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.917"
}

inputs = {
  name        = "service-0917"
  environment = "stage"
  region      = "eu-west-1"
}
