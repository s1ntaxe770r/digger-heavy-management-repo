# dummy unit dev/us-east-1/service-0715
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.715"
}

inputs = {
  name        = "service-0715"
  environment = "dev"
  region      = "us-east-1"
}
