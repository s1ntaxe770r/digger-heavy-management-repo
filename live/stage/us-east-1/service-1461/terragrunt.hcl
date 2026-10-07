# dummy unit stage/us-east-1/service-1461
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1461"
}

inputs = {
  name        = "service-1461"
  environment = "stage"
  region      = "us-east-1"
}
