# dummy unit dev/us-east-1/service-0675
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.675"
}

inputs = {
  name        = "service-0675"
  environment = "dev"
  region      = "us-east-1"
}
