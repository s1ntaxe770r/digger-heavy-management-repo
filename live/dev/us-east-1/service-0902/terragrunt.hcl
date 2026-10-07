# dummy unit dev/us-east-1/service-0902
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.902"
}

inputs = {
  name        = "service-0902"
  environment = "dev"
  region      = "us-east-1"
}
