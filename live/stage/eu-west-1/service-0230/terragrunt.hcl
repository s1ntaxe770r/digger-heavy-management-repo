# dummy unit stage/eu-west-1/service-0230
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.230"
}

inputs = {
  name        = "service-0230"
  environment = "stage"
  region      = "eu-west-1"
}
