# dummy unit prod/eu-west-1/service-0670
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.670"
}

inputs = {
  name        = "service-0670"
  environment = "prod"
  region      = "eu-west-1"
}
