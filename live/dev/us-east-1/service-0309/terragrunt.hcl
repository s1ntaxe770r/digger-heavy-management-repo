# dummy unit dev/us-east-1/service-0309
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.309"
}

inputs = {
  name        = "service-0309"
  environment = "dev"
  region      = "us-east-1"
}
