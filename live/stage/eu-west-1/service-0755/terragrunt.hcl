# dummy unit stage/eu-west-1/service-0755
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.755"
}

inputs = {
  name        = "service-0755"
  environment = "stage"
  region      = "eu-west-1"
}
