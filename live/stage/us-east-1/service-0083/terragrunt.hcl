# dummy unit stage/us-east-1/service-0083
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.083"
}

inputs = {
  name        = "service-0083"
  environment = "stage"
  region      = "us-east-1"
}
