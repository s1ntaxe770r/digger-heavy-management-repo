# dummy unit dev/eu-west-1/service-1390
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1390"
}

inputs = {
  name        = "service-1390"
  environment = "dev"
  region      = "eu-west-1"
}
