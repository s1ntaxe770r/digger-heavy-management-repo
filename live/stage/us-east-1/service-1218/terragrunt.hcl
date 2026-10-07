# dummy unit stage/us-east-1/service-1218
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.1218"
}

inputs = {
  name        = "service-1218"
  environment = "stage"
  region      = "us-east-1"
}
