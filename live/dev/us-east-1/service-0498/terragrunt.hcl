# dummy unit dev/us-east-1/service-0498
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.498"
}

inputs = {
  name        = "service-0498"
  environment = "dev"
  region      = "us-east-1"
}
