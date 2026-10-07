# dummy unit prod/eu-west-1/service-0647
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.647"
}

inputs = {
  name        = "service-0647"
  environment = "prod"
  region      = "eu-west-1"
}
