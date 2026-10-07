# dummy unit stage/eu-west-1/service-0765
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.765"
}

inputs = {
  name        = "service-0765"
  environment = "stage"
  region      = "eu-west-1"
}
