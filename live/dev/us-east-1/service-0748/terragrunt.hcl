# dummy unit dev/us-east-1/service-0748
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.748"
}

inputs = {
  name        = "service-0748"
  environment = "dev"
  region      = "us-east-1"
}
