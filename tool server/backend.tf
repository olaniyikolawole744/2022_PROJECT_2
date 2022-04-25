# Backend for storing database statefile
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/tool-server/terraform.tfstate"
    region = "us-east-1"
  }
}