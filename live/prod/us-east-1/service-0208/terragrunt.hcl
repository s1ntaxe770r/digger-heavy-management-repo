# dummy unit prod/us-east-1/service-0208
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.208"
}

inputs = {
  name        = "service-0208"
  environment = "prod"
  region      = "us-east-1"
}
