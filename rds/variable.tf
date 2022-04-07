#subnet group variable
variable "subnet_group_name" {}
variable "subnetGroupTagname" {}

#database instance variable
variable "availabilityZoneToPlaceDatabase" {}
variable "databaseStorageSize" {} #number (10)
variable "rds-instance-name" {}
variable "databseEngineName" {}         #mysql
variable "databaseEngineVersion" {}     #"5.7"
variable "databaseInstanceClassType" {} #"db.t2.micro"
variable "databaseName" {}              #"infoRepoDatabase1"
variable "databaseMasterUsername" {}    #"myUsername"
variable "databaseMasterPassword" {}    #"mypassword"
variable "parameterGroupName" {}        #"default.mysql5.7"

#security group variables
variable "sg_name" {}
variable "sg_description_main" {}
variable "sg_tag_name" {}

# security group rule variables
variable "securityGroupIdToAddRuleTo" {}
variable "securityRuleFromPort" {}
variable "securityRuleToPort" {}
#variable "securityGroupRuleCidrBlock" {}



#variable "tomcatSecurityGroupName" {}
variable "inboundTrafficSourceSecurityGroupId" {}

