# ec2 variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "old-mac-key"
bootstrapFileToLaunchWithEC2Instance = "tomcat_bootstrap"
server_name                          = ["app_tomcat_server", "app_tomcat_server"]
securityGroupToAttachToEC2Instance   = "tb_vpc_tomcat_sg"
subnetToPlaceEC2Instance             = ["private_subnet_zone_a", "private_subnet_zone_b"]
user_data                            = ""

# security group rule variables values
securityGroupIdToAddRuleTo          = ""
securityRuleFromPort                = ["22", "8080"]
securityRuleToPort                  = ["22", "8080"]
inboundTrafficSourceSecurityGroupId = ""

#secutiry group name variables values
httpdSecurityGroupName  = "tb_vpc_httpd_sg"
tomcatSecurityGroupName = "tb_vpc_tomcat_sg"
