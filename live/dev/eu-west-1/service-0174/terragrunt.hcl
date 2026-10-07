# dummy unit dev/eu-west-1/service-0174
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.174"
}

inputs = {
  name        = "service-0174"
  environment = "dev"
  region      = "eu-west-1"
}
