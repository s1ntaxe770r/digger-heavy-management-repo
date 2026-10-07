# dummy unit prod/us-east-1/service-0109
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.109"
}

inputs = {
  name        = "service-0109"
  environment = "prod"
  region      = "us-east-1"
}
