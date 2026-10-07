# dummy unit stage/us-east-1/service-0769
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.769"
}

inputs = {
  name        = "service-0769"
  environment = "stage"
  region      = "us-east-1"
}
