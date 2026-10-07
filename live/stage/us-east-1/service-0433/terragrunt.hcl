# dummy unit stage/us-east-1/service-0433
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.433"
}

inputs = {
  name        = "service-0433"
  environment = "stage"
  region      = "us-east-1"
}
