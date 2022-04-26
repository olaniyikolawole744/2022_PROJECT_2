#subnet group variable values
subnet_group_name  = "tb_vpc_rds_inforepo_subnet_group"
subnetGroupTagname = "tbVpcRdsInfoRepoSubnetGroup"

#database instance variable values 
availabilityZoneToPlaceDatabase = ["us-east-1a", "us-east-1b"]
databaseStorageSize             = 10 #number (10)
rds-instance-name               = ["active-rds-server","standby-rds-server"]
databseEngineName               = "mysql"             #mysql
databaseEngineVersion           = "5.7"               #"5.7"
databaseInstanceClassType       = "db.t2.micro"       #"db.t2.micro"
databaseName                    = "infoRepoDatabase1" #"infoRepoDatabase1"
databaseMasterUsername          = "myUsername"        #"myUsername"
databaseMasterPassword          = "myPassword"        #"mypassword"
parameterGroupName              = "default.mysql5.7"  #"default.mysql5.7"

#security group variable values
sg_name             = "tbVpcRdsDb_SG"
sg_description_main = "db sg"
sg_tag_name         = "tbVpcRdsDb_SG"

# security group rule variable values
securityGroupIdToAddRuleTo = ""
securityRuleFromPort       = ["3306"]
securityRuleToPort         = ["3306"]

#inboundTrafficSourceSecurityGroupId = ""


