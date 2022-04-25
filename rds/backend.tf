# Backend for storing database statefile
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/rds/terraform.tfstate"
    region = "us-east-1"
  }
}