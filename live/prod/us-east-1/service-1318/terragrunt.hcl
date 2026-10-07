# dummy unit prod/us-east-1/service-1318
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1318"
}

inputs = {
  name        = "service-1318"
  environment = "prod"
  region      = "us-east-1"
}
