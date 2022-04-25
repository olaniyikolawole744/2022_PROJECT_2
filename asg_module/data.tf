# Data source to get AMI
data "aws_ami" "getGoldenImageAMI" {
  most_recent = true

  filter {
    name   = "name"
    values = ["golden_Ami_Image_With_Ec2_User"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["self"]
}

#Data source to fetch httpd/web_server security group id
data "aws_security_group" "getHttpdSecurityGroupName" {
  filter {
    name   = "tag:Name"
    values = ["tb_vpc_httpd_sg"]
  }
}

# Data to fetch subnet in availability zone a for subnet group 
data "aws_subnet" "get_subnet_ids_from_vpc_for_subnet_group_aza" {
  filter {
    name   = "tag:Name"
    values = ["private_subnet_zone_a"]
  }
}

#Data to fetch subnet in availability zone b for subnet group 
data "aws_subnet" "get_subnet_ids_from_vpc_for_subnet_group_azb" {
  filter {
    name   = "tag:Name"
    values = ["private_subnet_zone_b"]
  }
}
