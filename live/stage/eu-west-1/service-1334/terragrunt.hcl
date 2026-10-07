# dummy unit stage/eu-west-1/service-1334
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1334"
}

inputs = {
  name        = "service-1334"
  environment = "stage"
  region      = "eu-west-1"
}
