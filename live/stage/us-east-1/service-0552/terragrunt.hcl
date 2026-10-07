# dummy unit stage/us-east-1/service-0552
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.552"
}

inputs = {
  name        = "service-0552"
  environment = "stage"
  region      = "us-east-1"
}
