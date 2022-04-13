#security group variables values 
sg_name             = ["tb_vpc_httpd_sg", "tb_vpc_tomcat_sg", "tb_vpc_db_sg", "tb_vpc_elb_sg"]
sg_description_main = ["httpd sg", "tomcat sg", "db sg", "elb sg"]
sg_tag_name         = ["tb_vpc_httpd_sg", "tb_vpc_tomcat_sg", "tb_vpc_db_sg", "tb_vpc_elb_sg"]

# subnet variables values
vpcId                          = ""
subnetCidrBlock                = ["10.0.16.0/24", "10.0.32.0/24", "10.0.48.0/24", "10.0.64.0/24", "10.0.80.0/24", "10.0.96.0/24", "10.0.112.0/24"]
subnetAvailabilityZone         = ["us-east-1a", "us-east-1a", "us-east-1a", "us-east-1b", "us-east-1b", "us-east-1b"]
subnetTagName                  = ["web_tier_subnet_zone_a", "app_tier_subnet_zone_a", "db_tier_subnet_zone_a", "web_tier_subnet_zone_b", "app_tier_subnet_zone_b", "db_tier_subnet_zone_b"]
tier                           = ["public", "private", "private", "public", "private", "private"]
getSubnetDataSourceFilterValue = ["web_tier_subnet_zone_a", "web_tier_subnet_zone_b"]