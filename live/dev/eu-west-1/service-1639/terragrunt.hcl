# dummy unit dev/eu-west-1/service-1639
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1639"
}

inputs = {
  name        = "service-1639"
  environment = "dev"
  region      = "eu-west-1"
}
