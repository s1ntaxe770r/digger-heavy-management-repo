# dummy unit dev/eu-west-1/service-0370
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.370"
}

inputs = {
  name        = "service-0370"
  environment = "dev"
  region      = "eu-west-1"
}
