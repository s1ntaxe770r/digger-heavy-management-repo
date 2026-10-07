# dummy unit prod/us-east-1/service-0873
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.873"
}

inputs = {
  name        = "service-0873"
  environment = "prod"
  region      = "us-east-1"
}
