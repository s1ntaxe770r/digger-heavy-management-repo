# dummy unit prod/eu-west-1/service-1186
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1186"
}

inputs = {
  name        = "service-1186"
  environment = "prod"
  region      = "eu-west-1"
}
