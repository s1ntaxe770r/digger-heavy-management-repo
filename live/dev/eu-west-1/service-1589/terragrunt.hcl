# dummy unit dev/eu-west-1/service-1589
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1589"
}

inputs = {
  name        = "service-1589"
  environment = "dev"
  region      = "eu-west-1"
}
