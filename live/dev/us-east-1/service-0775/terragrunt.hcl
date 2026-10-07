# dummy unit dev/us-east-1/service-0775
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.775"
}

inputs = {
  name        = "service-0775"
  environment = "dev"
  region      = "us-east-1"
}
