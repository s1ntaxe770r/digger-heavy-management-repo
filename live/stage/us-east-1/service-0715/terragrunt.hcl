# dummy unit stage/us-east-1/service-0715
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.715"
}

inputs = {
  name        = "service-0715"
  environment = "stage"
  region      = "us-east-1"
}
