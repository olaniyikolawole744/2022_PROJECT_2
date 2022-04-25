# ec2 variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "old-mac-key"
bootstrapFileToLaunchWithEC2Instance = "httpd_bootstrap"
server_name                          = ["web_server_1", "web_server_2"]
securityGroupToAttachToEC2Instance   = "tb_vpc_httpd_sg"
subnetToPlaceEC2Instance             = ["public_subnet_zone_a", "public_subnet_zone_b"]
user_data                            = ""

# security group rule variables values
securityGroupIdToAddRuleTo          = ""
securityRuleFromPort                = ["22", "80"]
securityRuleToPort                  = ["22", "80"]
inboundTrafficSourceSecurityGroupId = ""


httpdSecurityGroupName = "tb_vpc_httpd_sg"
elbSecurityGroupName   = "tb_vpc_elb_sg"