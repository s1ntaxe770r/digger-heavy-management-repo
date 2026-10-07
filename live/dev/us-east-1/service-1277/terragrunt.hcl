# dummy unit dev/us-east-1/service-1277
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1277"
}

inputs = {
  name        = "service-1277"
  environment = "dev"
  region      = "us-east-1"
}
