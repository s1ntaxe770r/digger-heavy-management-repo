# dummy unit dev/eu-west-1/service-1665
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1665"
}

inputs = {
  name        = "service-1665"
  environment = "dev"
  region      = "eu-west-1"
}
