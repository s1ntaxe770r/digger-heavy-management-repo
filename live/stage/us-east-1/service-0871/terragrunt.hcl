# dummy unit stage/us-east-1/service-0871
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.871"
}

inputs = {
  name        = "service-0871"
  environment = "stage"
  region      = "us-east-1"
}
