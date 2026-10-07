# dummy unit prod/eu-west-1/service-0988
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.988"
}

inputs = {
  name        = "service-0988"
  environment = "prod"
  region      = "eu-west-1"
}
