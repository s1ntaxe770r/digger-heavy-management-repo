# dummy unit stage/us-east-1/service-0734
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.734"
}

inputs = {
  name        = "service-0734"
  environment = "stage"
  region      = "us-east-1"
}
