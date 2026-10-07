# dummy unit stage/us-east-1/service-1173
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1173"
}

inputs = {
  name        = "service-1173"
  environment = "stage"
  region      = "us-east-1"
}
