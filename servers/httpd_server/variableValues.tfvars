# ec2 variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "windows-on-nigeriakitchen-kp"
bootstrapFileToLaunchWithEC2Instance = "httpd_bootstrap"
server_name                          = ["appache_web_server_1", "appache_web_server_2"]
securityGroupToAttachToEC2Instance   = "tb_vpc_httpd_sg"
subnetToPlaceEC2Instance             = ["web_tier_subnet_zone_a", "web_tier_subnet_zone_b"]
user_data                            = ""

# security group rule variables values
securityGroupIdToAddRuleTo          = ""
securityRuleFromPort                = ["22", "80"]
securityRuleToPort                  = ["22", "80"]
inboundTrafficSourceSecurityGroupId = ""


httpdSecurityGroupName = "tb_vpc_httpd_sg"
elbSecurityGroupName   = "tb_vpc_elb_sg"