# dummy unit stage/us-east-1/service-1598
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1598"
}

inputs = {
  name        = "service-1598"
  environment = "stage"
  region      = "us-east-1"
}
