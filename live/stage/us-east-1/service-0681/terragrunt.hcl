# dummy unit stage/us-east-1/service-0681
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.681"
}

inputs = {
  name        = "service-0681"
  environment = "stage"
  region      = "us-east-1"
}
