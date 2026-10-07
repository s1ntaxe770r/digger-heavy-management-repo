# dummy unit stage/us-east-1/service-0778
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.778"
}

inputs = {
  name        = "service-0778"
  environment = "stage"
  region      = "us-east-1"
}
