resource "aws_launch_configuration" "launchConfigurationTemplate" {
  name_prefix     = var.namePrefixForMachinesCreatedBAutoscalingGroup #"web_server"
  image_id        = data.aws_ami.getGoldenImageAMI.id
  instance_type   = "t2.micro"
  #user_data       = file("launchFile.sh")
  security_groups = [data.aws_security_group.getHttpdSecurityGroupName.id] #aws_security_group.terramino_instance.id

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "createAutoScalingGroup" {
  min_size             = var.minimumNumberOfMachineAutoScalingGroupCanScaleDownTo #1
  max_size             = var. maximumNumberOfMachineAutoScalingGroupCanScaleUpTo #3
  desired_capacity     = var.numberOfMachinesToExistInIdealCondition #1
  launch_configuration = aws_launch_configuration.launchConfigurationTemplate.name #aws_launch_configuration.terramino.name
  vpc_zone_identifier  = [data.aws_subnet.get_subnet_ids_from_vpc_for_subnet_group_aza.id, data.aws_subnet.get_subnet_ids_from_vpc_for_subnet_group_azb.id] #module.vpc.public_subnets

lifecycle { 
    ignore_changes = [desired_capacity, target_group_arns]
  }
}

resource "aws_autoscaling_attachment" "autoScalingAttachment" {
  autoscaling_group_name = aws_autoscaling_group.createAutoScalingGroup.id #aws_autoscaling_group.terramino.id
  #alb_target_group_arn   = var.albTargetGroupArn #aws_lb_target_group.terramino.arn
  lb_target_group_arn   = var.albTargetGroupArn 
}

resource "aws_autoscaling_policy" "scale_down_policy" {
  name                   = "scale_down_policy"
  autoscaling_group_name = aws_autoscaling_group.createAutoScalingGroup.name
  adjustment_type        = "ChangeInCapacity"
  scaling_adjustment     = -1
  cooldown               = 120
}

resource "aws_cloudwatch_metric_alarm" "cloudwatch_scale_down_metric" {
  alarm_description   = "Monitors CPU utilization for autoScalingGroup ASG"
  alarm_actions       = [aws_autoscaling_policy.scale_down_policy.arn]
  alarm_name          = "cloudwatch_scale_down_metric"
  comparison_operator = "LessThanOrEqualToThreshold"
  namespace           = "AWS/EC2"
  metric_name         = "CPUUtilization"
  threshold           = "10"
  evaluation_periods  = "2"
  period              = "120"
  statistic           = "Average"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.createAutoScalingGroup.name
  }
}