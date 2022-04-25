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