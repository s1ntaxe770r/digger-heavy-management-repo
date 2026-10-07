# dummy unit stage/eu-west-1/service-0845
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.845"
}

inputs = {
  name        = "service-0845"
  environment = "stage"
  region      = "eu-west-1"
}
