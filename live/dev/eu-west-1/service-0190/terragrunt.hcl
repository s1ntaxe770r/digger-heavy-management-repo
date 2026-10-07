# dummy unit dev/eu-west-1/service-0190
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.190"
}

inputs = {
  name        = "service-0190"
  environment = "dev"
  region      = "eu-west-1"
}
