# Data source to fetch vpc id
data "aws_vpc" "get_vpc" {
  filter {
    name   = "tag:Name"
    values = ["tb_vpc"]
  }
}

#Data source to fetch database subnet
data "aws_subnet" "subnet_to_place_server" {
  filter {
    name = "tag:Name"
    
  values = [var.subnetToPlaceEC2Instance]
  }
}

# Data source to fetch database security group
data "aws_security_group" "securityGroupToAttachToECEInstance" {
  filter {
    name = "tag:Name"
    values = [var.securityGroupToAttachToEC2Instance]
  }
}
