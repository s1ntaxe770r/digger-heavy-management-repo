# dummy unit stage/us-east-1/service-1107
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1107"
}

inputs = {
  name        = "service-1107"
  environment = "stage"
  region      = "us-east-1"
}
