# Backend for 
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/elb/terraform.tfstate"
    region = "us-east-1"
  }
}