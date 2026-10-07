# dummy unit stage/eu-west-1/service-0459
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.459"
}

inputs = {
  name        = "service-0459"
  environment = "stage"
  region      = "eu-west-1"
}
