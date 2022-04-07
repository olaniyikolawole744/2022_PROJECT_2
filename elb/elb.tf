resource "aws_lb" "webTierELB" {
  name               = "webTierApplicationLoadBalancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [data.aws_security_group.getSecurityGroupToAttachToELB.id]
  subnets            = [data.aws_subnet.get_subnet_ids_from_vpc_for_subnet_group_aza.id, data.aws_subnet.get_subnet_ids_from_vpc_for_subnet_group_azb.id]

  tags = {
    Environment = "production"
    Name        = "webTierApplicationLoadBalancer"
  }
}

