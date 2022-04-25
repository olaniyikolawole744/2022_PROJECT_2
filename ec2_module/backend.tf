# Backend for storing database statefile
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/ec2/terraform.tfstates"
    region = "us-east-1"
  }
}