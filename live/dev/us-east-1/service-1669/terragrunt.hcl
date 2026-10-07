# dummy unit dev/us-east-1/service-1669
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1669"
}

inputs = {
  name        = "service-1669"
  environment = "dev"
  region      = "us-east-1"
}
