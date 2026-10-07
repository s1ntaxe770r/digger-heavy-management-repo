# dummy unit stage/us-east-1/service-0764
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.764"
}

inputs = {
  name        = "service-0764"
  environment = "stage"
  region      = "us-east-1"
}
