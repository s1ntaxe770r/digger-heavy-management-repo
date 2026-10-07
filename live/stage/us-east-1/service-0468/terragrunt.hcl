# dummy unit stage/us-east-1/service-0468
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.468"
}

inputs = {
  name        = "service-0468"
  environment = "stage"
  region      = "us-east-1"
}
