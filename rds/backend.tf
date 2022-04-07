# Backend for storing database statefile
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/rds/terraform.tfstates"
    region = "us-east-1"
  }
}