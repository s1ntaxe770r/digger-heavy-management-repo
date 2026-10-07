# dummy unit dev/us-east-1/service-1388
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1388"
}

inputs = {
  name        = "service-1388"
  environment = "dev"
  region      = "us-east-1"
}
