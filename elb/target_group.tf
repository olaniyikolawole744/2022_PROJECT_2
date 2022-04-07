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