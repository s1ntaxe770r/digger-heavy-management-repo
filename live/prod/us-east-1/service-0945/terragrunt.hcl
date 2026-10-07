# dummy unit prod/us-east-1/service-0945
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.945"
}

inputs = {
  name        = "service-0945"
  environment = "prod"
  region      = "us-east-1"
}
