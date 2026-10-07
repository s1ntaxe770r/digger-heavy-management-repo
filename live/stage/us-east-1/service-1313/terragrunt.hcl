# dummy unit stage/us-east-1/service-1313
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1313"
}

inputs = {
  name        = "service-1313"
  environment = "stage"
  region      = "us-east-1"
}
