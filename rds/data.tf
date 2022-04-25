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



# Data source block to fetch vpc id
data "aws_vpc" "get_vpc" {
  filter {
    name   = "tag:Name"
    values = ["tb_vpc"]
  }
}

# Data source block to fetch database security group
data "aws_security_group" "get_db_sg" {
  filter {
    name   = "tag:Name"
    values = ["tb_vpc_db_sg"]
  }
}




#====================================================================
#Data source to fetch tomcat security group for inbound source traffic
data "aws_security_group" "getTomcatSecurityGroup" {
  filter {
    name   = "tag:Name"
    values = ["tb_vpc_tomcat_sg"]
  }
}