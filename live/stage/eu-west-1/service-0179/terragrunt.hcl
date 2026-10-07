# dummy unit stage/eu-west-1/service-0179
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.179"
}

inputs = {
  name        = "service-0179"
  environment = "stage"
  region      = "eu-west-1"
}
