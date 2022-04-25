# ec2 instance variables
variable "subnetToPlaceEC2Instance" {}
variable "securityGroupToAttachToEC2Instance" {}
variable "bootstrapFileToLaunchWithEC2Instance" {}
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "server_name" {}
variable "user_data" {}

# security rule variables needed for creating ingress
variable "securityGroupIdToAddRuleTo" {}
variable "securityRuleFromPort" {}
variable "securityRuleToPort" {}
#variable "inboundTrafficSourceSecurityGroupId" {}


#variable "httpdSecurityGroupName" {}
variable "toolServerSecurityGroupName" {}
#variable "elbSecurityGroupName" {}

