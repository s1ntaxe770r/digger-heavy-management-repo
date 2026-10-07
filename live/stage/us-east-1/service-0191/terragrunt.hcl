# dummy unit stage/us-east-1/service-0191
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.191"
}

inputs = {
  name        = "service-0191"
  environment = "stage"
  region      = "us-east-1"
}
