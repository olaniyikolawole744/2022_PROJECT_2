# Backend for storing database statefile
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/asg/terraform.tfstate"
    region = "us-east-1"
  }
}