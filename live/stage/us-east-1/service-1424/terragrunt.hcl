# dummy unit stage/us-east-1/service-1424
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1424"
}

inputs = {
  name        = "service-1424"
  environment = "stage"
  region      = "us-east-1"
}
