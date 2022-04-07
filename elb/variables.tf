# elb security group variables
variable "securityGroupToAttachToELB" {}

# elb security group rule variables 
variable "elbSecurityGroupIdToAddRuleTo" {}
variable "elbSecurityRuleFromPort" {}
variable "elbSecurityRuleToPort" {}
variable "elbSecurityGroupRuleCidrBlock" {}