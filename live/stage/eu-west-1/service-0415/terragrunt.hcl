# dummy unit stage/eu-west-1/service-0415
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.415"
}

inputs = {
  name        = "service-0415"
  environment = "stage"
  region      = "eu-west-1"
}
