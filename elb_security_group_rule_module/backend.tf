# Backend for storing database statefile
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/elb-sg/terraform.tfstate"
    region = "us-east-1"
  }
}