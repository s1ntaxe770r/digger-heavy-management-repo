# dummy unit stage/us-east-1/service-1112
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1112"
}

inputs = {
  name        = "service-1112"
  environment = "stage"
  region      = "us-east-1"
}
