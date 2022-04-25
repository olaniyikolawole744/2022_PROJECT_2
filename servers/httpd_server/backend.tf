# Backend for 
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/httpd_server/terraform.tfstate"
    region = "us-east-1"
  }
}