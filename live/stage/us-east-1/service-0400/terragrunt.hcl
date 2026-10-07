# dummy unit stage/us-east-1/service-0400
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.400"
}

inputs = {
  name        = "service-0400"
  environment = "stage"
  region      = "us-east-1"
}
