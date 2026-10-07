# dummy unit stage/us-east-1/service-0794
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.794"
}

inputs = {
  name        = "service-0794"
  environment = "stage"
  region      = "us-east-1"
}
