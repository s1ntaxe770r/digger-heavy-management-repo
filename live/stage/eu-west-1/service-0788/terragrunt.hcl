# dummy unit stage/eu-west-1/service-0788
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.788"
}

inputs = {
  name        = "service-0788"
  environment = "stage"
  region      = "eu-west-1"
}
