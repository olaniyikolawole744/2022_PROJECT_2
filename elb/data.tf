# Data Source for VPC Id
data "aws_vpc" "get_vpc" {
  filter {
    name   = "tag:Name"
    values = ["tb_vpc"]
  }
}

# Data source to fetch subnet in availability zone a for subnet group 
data "aws_subnet" "get_subnet_ids_from_vpc_for_subnet_group_aza" {
  filter {
    name   = "tag:Name"
    values = ["public_subnet_zone_a"]
  }
}

#Data source to fetch subnet in availability zone b for subnet group 
data "aws_subnet" "get_subnet_ids_from_vpc_for_subnet_group_azb" {
  filter {
    name   = "tag:Name"
    values = ["public_subnet_zone_b"]
  }
}

#Data source to fetch elb security group to create ingress
data "aws_security_group" "getSecurityGroupToAttachToELB" {
  filter {
    name   = "tag:Name"
    values = [var.securityGroupToAttachToELB]
  }
}

data "aws_instance" "getServerIdToRegisterWithTargetGroup_1" {
  filter {
    name   = "tag:Name"
    values = ["web_server_1"]
  }
}

data "aws_instance" "getServerIdToRegisterWithTargetGroup_2" {
  filter {
    name   = "tag:Name"
    values = ["web_server_2"]
  }
}

