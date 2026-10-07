# dummy unit stage/us-east-1/service-0756
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.756"
}

inputs = {
  name        = "service-0756"
  environment = "stage"
  region      = "us-east-1"
}
