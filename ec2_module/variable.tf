# ec2 instance variables
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "server_name" {}
variable "subnetToPlaceEC2Instance" {}
variable "securityGroupToAttachToEC2Instance" {}
variable "bootstrapFileToLaunchWithEC2Instance" {}
variable "user_data" {}