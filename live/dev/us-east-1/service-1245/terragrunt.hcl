# dummy unit dev/us-east-1/service-1245
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1245"
}

inputs = {
  name        = "service-1245"
  environment = "dev"
  region      = "us-east-1"
}
