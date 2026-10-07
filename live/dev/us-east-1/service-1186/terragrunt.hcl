# dummy unit dev/us-east-1/service-1186
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1186"
}

inputs = {
  name        = "service-1186"
  environment = "dev"
  region      = "us-east-1"
}
