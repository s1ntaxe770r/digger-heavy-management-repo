# dummy unit prod/us-east-1/service-0793
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.793"
}

inputs = {
  name        = "service-0793"
  environment = "prod"
  region      = "us-east-1"
}
