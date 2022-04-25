# elb security group variables
variable "securityGroupToAttachToELB" {}

# elb security group rule variables 
variable "elbSecurityGroupIdToAddRuleTo" {}
variable "elbSecurityRuleFromPort" {}
variable "elbSecurityRuleToPort" {}
variable "elbSecurityGroupRuleCidrBlock" {}

# autoscaling variables 
variable "namePrefixForMachinesCreatedBAutoscalingGroup" {}
#variable "ami" {} 
#variable "ec2InstanceType"
#variable "linuxScriptFileToInstallOnMachineCreatedByAutoscalingGroup" {}
#variable "webServerSecurityGroupId" {}
variable "minimumNumberOfMachineAutoScalingGroupCanScaleDownTo" {}
variable "maximumNumberOfMachineAutoScalingGroupCanScaleUpTo" {}
variable "numberOfMachinesToExistInIdealCondition" {}
#variable "launchConfigurationName" {}
#variable "nameOfSubnetsWhereAutoscalingWillCreateMachines" {}
#variable "autoScalingGroupName" {} 
variable "albTargetGroupArn" {}