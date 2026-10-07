# dummy unit dev/eu-west-1/service-1142
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1142"
}

inputs = {
  name        = "service-1142"
  environment = "dev"
  region      = "eu-west-1"
}
