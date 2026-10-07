# dummy unit dev/us-east-1/service-0316
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.316"
}

inputs = {
  name        = "service-0316"
  environment = "dev"
  region      = "us-east-1"
}
