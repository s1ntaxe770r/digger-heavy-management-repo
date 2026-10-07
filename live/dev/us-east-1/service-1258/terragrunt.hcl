# dummy unit dev/us-east-1/service-1258
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1258"
}

inputs = {
  name        = "service-1258"
  environment = "dev"
  region      = "us-east-1"
}
