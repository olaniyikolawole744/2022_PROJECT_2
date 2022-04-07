# ec2 variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "windows-on-nigeriakitchen-kp"
bootstrapFileToLaunchWithEC2Instance = "httpd_bootstrap"
server_name                          = "tool_server_1"
securityGroupToAttachToEC2Instance   = "tb_vpc_httpd_sg"
subnetToPlaceEC2Instance             = "web_tier_subnet_zone_a"
user_data                            = ""

# security group rule variables values
securityGroupIdToAddRuleTo          = ""
securityRuleFromPort                = ["22", "8080"]
securityRuleToPort                  = ["22", "8080"]
inboundTrafficSourceSecurityGroupId = ""


httpdSecurityGroupName = "tb_vpc_httpd_sg"
elbSecurityGroupName   = "tb_vpc_elb_sg"