resource "aws_lb_target_group_attachment" "registerWebTierTargetwithTargetGroup_1" {
  target_group_arn = aws_lb_target_group.createTargetGroupForWebTierELB.arn
  target_id        = data.aws_instance.getServerIdToRegisterWithTargetGroup_1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "registerWebTierTargetwithTargetGroup_2" {
  target_group_arn = aws_lb_target_group.createTargetGroupForWebTierELB.arn
  target_id        = data.aws_instance.getServerIdToRegisterWithTargetGroup_2.id
  port             = 80
}
