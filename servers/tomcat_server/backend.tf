# Back end for storing server state file
terraform {
  backend "s3" {
    bucket = "lennips-bucket"
    key    = "training/tomcat_server/terraform.tfstates"
    region = "us-east-1"
  }
}