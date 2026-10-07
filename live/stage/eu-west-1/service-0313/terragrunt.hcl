# dummy unit stage/eu-west-1/service-0313
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.313"
}

inputs = {
  name        = "service-0313"
  environment = "stage"
  region      = "eu-west-1"
}
