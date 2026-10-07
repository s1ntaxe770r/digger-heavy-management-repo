# dummy unit prod/eu-west-1/service-0959
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.959"
}

inputs = {
  name        = "service-0959"
  environment = "prod"
  region      = "eu-west-1"
}
