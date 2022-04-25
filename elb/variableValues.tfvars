# elb security group variables values
securityGroupToAttachToELB = "tb_vpc_elb_sg"

# elb security group rule variables values
elbSecurityGroupIdToAddRuleTo = ""
elbSecurityRuleFromPort       = "80"
elbSecurityRuleToPort         = "80"
elbSecurityGroupRuleCidrBlock = "0.0.0.0/0"

# autoscaling variables values
namePrefixForMachinesCreatedBAutoscalingGroup = "web_server"
#ami = ""
#ec2InstanceType = "t2.micro"
#linuxScriptFileToInstallOnMachineCreatedByAutoscalingGroup = ""
#webServerSecurityGroupId = ""
minimumNumberOfMachineAutoScalingGroupCanScaleDownTo = 1
maximumNumberOfMachineAutoScalingGroupCanScaleUpTo   = 3
numberOfMachinesToExistInIdealCondition              = 2
#launchConfigurationName = ""
#nameOfSubnetsWhereAutoscalingWillCreateMachines = ""
#autoScalingGroupName = ""
albTargetGroupArn = ""