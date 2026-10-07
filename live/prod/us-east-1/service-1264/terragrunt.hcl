# dummy unit prod/us-east-1/service-1264
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1264"
}

inputs = {
  name        = "service-1264"
  environment = "prod"
  region      = "us-east-1"
}
