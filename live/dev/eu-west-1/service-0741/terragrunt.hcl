# dummy unit dev/eu-west-1/service-0741
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.741"
}

inputs = {
  name        = "service-0741"
  environment = "dev"
  region      = "eu-west-1"
}
