# dummy unit dev/us-east-1/service-1069
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1069"
}

inputs = {
  name        = "service-1069"
  environment = "dev"
  region      = "us-east-1"
}
