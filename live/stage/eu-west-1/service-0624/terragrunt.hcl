# dummy unit stage/eu-west-1/service-0624
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/example/modules.git//service?ref=v1.624"
}

inputs = {
  name        = "service-0624"
  environment = "stage"
  region      = "eu-west-1"
}
