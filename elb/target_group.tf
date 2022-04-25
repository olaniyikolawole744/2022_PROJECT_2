resource "aws_lb_target_group" "createTargetGroupForWebTierELB" {
  name     = "targetGroupForWebTierELB"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.get_vpc.id

  health_check {
    healthy_threshold   = "3"
    interval            = "30"
    protocol            = "HTTP"
    matcher             = "200"
    port                = "80"
    timeout             = "5"
    path                = "/var/www/html/index.html"
    unhealthy_threshold = "3"
  }

  tags = {
    Name = "targetGroupForWebTierELB"
  }
}

module "createAutoscaling" {
  source                                        = "../asg_module"
  namePrefixForMachinesCreatedBAutoscalingGroup = var.namePrefixForMachinesCreatedBAutoscalingGroup
  #ami = var.ami 
  #ec2InstanceType = var.ec2InstanceType
  #linuxScriptFileToInstallOnMachineCreatedByAutoscalingGroup = var.linuxScriptFileToInstallOnMachineCreatedByAutoscalingGroup
  #webServerSecurityGroupId = var.webServerSecurityGroupId
  minimumNumberOfMachineAutoScalingGroupCanScaleDownTo = var.minimumNumberOfMachineAutoScalingGroupCanScaleDownTo
  maximumNumberOfMachineAutoScalingGroupCanScaleUpTo   = var.maximumNumberOfMachineAutoScalingGroupCanScaleUpTo
  numberOfMachinesToExistInIdealCondition              = var.numberOfMachinesToExistInIdealCondition
  #launchConfigurationName = var.launchConfigurationName
  #nameOfSubnetsWhereAutoscalingWillCreateMachines = var.nameOfSubnetsWhereAutoscalingWillCreateMachines
  #autoScalingGroupName = var.autoScalingGroupName
  albTargetGroupArn = aws_lb_target_group.createTargetGroupForWebTierELB.arn
}