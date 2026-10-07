# dummy unit prod/us-east-1/service-0554
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.554"
}

inputs = {
  name        = "service-0554"
  environment = "prod"
  region      = "us-east-1"
}
