# dummy unit dev/eu-west-1/service-0939
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.939"
}

inputs = {
  name        = "service-0939"
  environment = "dev"
  region      = "eu-west-1"
}
