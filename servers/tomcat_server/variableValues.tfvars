/*# ec2 instance variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "windows-on-nigeriakitchen-kp"
bootstrapFileToLaunchWithEC2Instance = "tomcat_bootstrap"
server_name                          = ["tomcat_app_server_1", "tomcat_app_server_2"]
securityGroupToAttachToEC2Instance   = "tb_vpc_tomcat_sg"
subnetToPlaceEC2Instance             = ["app_tier_subnet_zone_a", "app_tier_subnet_zone_b"]
user_data                            = ""

# Security rules variables values
securityGroupIdToAddRuleTo = ""
securityRuleFromPort       = ["22", "8080"]
securityRuleToPort         = ["22", "8080"]
securityGroupRuleCidrBlock = "10.0.16.0/24" */




# ec2 variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "windows-on-nigeriakitchen-kp"
bootstrapFileToLaunchWithEC2Instance = "tomcat_bootstrap"
server_name                          = ["app_tier_server_1", "app_tier_server_2"]
securityGroupToAttachToEC2Instance   = "tb_vpc_tomcat_sg"
subnetToPlaceEC2Instance             = ["app_tier_subnet_zone_a", "app_tier_subnet_zone_b"]
user_data                            = ""

# security group rule variables values
securityGroupIdToAddRuleTo          = ""
securityRuleFromPort                = ["22", "8080"]
securityRuleToPort                  = ["22", "8080"]
inboundTrafficSourceSecurityGroupId = ""


httpdSecurityGroupName  = "tb_vpc_httpd_sg"
tomcatSecurityGroupName = "tb_vpc_tomcat_sg"
