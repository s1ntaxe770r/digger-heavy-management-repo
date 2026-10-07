# dummy unit prod/us-east-1/service-1360
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1360"
}

inputs = {
  name        = "service-1360"
  environment = "prod"
  region      = "us-east-1"
}
