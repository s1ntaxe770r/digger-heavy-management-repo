remote_state {
  backend = "s3"
  config = {
    bucket = "dummy-state"
    key    = "${path_relative_to_include()}/terraform.tfstate"
    region = "us-east-1"
  }
}
