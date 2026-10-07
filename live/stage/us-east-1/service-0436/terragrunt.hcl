# dummy unit stage/us-east-1/service-0436
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.436"
}

inputs = {
  name        = "service-0436"
  environment = "stage"
  region      = "us-east-1"
}
