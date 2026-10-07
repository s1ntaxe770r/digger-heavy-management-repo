# dummy unit stage/eu-west-1/service-0051
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.051"
}

inputs = {
  name        = "service-0051"
  environment = "stage"
  region      = "eu-west-1"
}
