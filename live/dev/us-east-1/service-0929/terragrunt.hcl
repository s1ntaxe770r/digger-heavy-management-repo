# dummy unit dev/us-east-1/service-0929
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.929"
}

inputs = {
  name        = "service-0929"
  environment = "dev"
  region      = "us-east-1"
}
