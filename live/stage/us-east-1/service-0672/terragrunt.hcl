# dummy unit stage/us-east-1/service-0672
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.672"
}

inputs = {
  name        = "service-0672"
  environment = "stage"
  region      = "us-east-1"
}
