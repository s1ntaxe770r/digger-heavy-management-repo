# dummy unit prod/us-east-1/service-1229
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1229"
}

inputs = {
  name        = "service-1229"
  environment = "prod"
  region      = "us-east-1"
}
