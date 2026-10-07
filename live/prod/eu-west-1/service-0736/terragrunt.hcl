# dummy unit prod/eu-west-1/service-0736
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.736"
}

inputs = {
  name        = "service-0736"
  environment = "prod"
  region      = "eu-west-1"
}
