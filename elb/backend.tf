# Backend for 
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/elb/terraform.tfstates"
    region = "us-east-1"
  }
}