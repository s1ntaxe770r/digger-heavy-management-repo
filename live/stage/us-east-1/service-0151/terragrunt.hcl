# dummy unit stage/us-east-1/service-0151
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.151"
}

inputs = {
  name        = "service-0151"
  environment = "stage"
  region      = "us-east-1"
}
