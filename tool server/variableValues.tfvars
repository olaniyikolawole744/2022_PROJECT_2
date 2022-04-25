# ec2 variables values
ami                                  = "ami-033b95fb8079dc481"
instance_type                        = "t2.micro"
key_name                             = "old-mac-key"
bootstrapFileToLaunchWithEC2Instance = "tools_bootstrap"
server_name                          = "tool_server"
securityGroupToAttachToEC2Instance   = "tb_vpc_tools_sg"
subnetToPlaceEC2Instance             = "public_subnet_zone_a"
user_data                            = ""

# security group rule variables values
securityGroupIdToAddRuleTo = ""
securityRuleFromPort       = ["22", "8080"]
securityRuleToPort         = ["22", "8080"]
#inboundTrafficSourceSecurityGroupId = ""



toolServerSecurityGroupName = "tb_vpc_tools_sg"