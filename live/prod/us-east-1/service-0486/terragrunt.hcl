# dummy unit prod/us-east-1/service-0486
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.486"
}

inputs = {
  name        = "service-0486"
  environment = "prod"
  region      = "us-east-1"
}
