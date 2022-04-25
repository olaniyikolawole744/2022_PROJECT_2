#security group variables values 
sg_name             = ["tb_vpc_httpd_sg", "tb_vpc_tomcat_sg", "tb_vpc_db_sg", "tb_vpc_elb_sg", "tb_vpc_tools_sg"]
sg_description_main = ["httpd sg", "tomcat sg", "db sg", "elb sg", "tools server sg"]
sg_tag_name         = ["tb_vpc_httpd_sg", "tb_vpc_tomcat_sg", "tb_vpc_db_sg", "tb_vpc_elb_sg", "tb_vpc_tools_sg"]

# subnet variables values
vpcId                          = ""
subnetCidrBlock                = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
subnetAvailabilityZone         = ["us-east-1a", "us-east-1b", "us-east-1a", "us-east-1b"]
subnetTagName                  = ["public_subnet_zone_a", "public_subnet_zone_b", "private_subnet_zone_a", "private_subnet_zone_b"]
tier                           = ["public", "public", "private", "private"]
getSubnetDataSourceFilterValue = ["public_subnet_zone_a", "public_subnet_zone_b"]