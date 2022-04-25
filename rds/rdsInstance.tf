# Terraform configuration block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Resource to create rds database
resource "aws_db_instance" "rdsDatabaseTemplate" {
  count                     = 2
  availability_zone         = var.availabilityZoneToPlaceDatabase[count.index]
  vpc_security_group_ids    = [data.aws_security_group.get_db_sg.id]
  allocated_storage         = var.databaseStorageSize #number (10)
  identifier                = var.rds-instance-name[count.index]
  engine                    = var.databseEngineName         #mysql
  engine_version            = var.databaseEngineVersion     #"5.7"
  instance_class            = var.databaseInstanceClassType #"db.t2.micro"
  name                      = var.databaseName              #"mydb"
  username                  = var.databaseMasterUsername    #"myusername"
  password                  = var.databaseMasterPassword    #"mypassword"
  db_subnet_group_name      = aws_db_subnet_group.subnetGroupTemplate.name
  parameter_group_name      = var.parameterGroupName #"default.mysql5.7"
  skip_final_snapshot       = true
  final_snapshot_identifier = "Ignore"
}


# Calling module to create security group rule for ingress provisioning
module "createSecurityGroupRule" {
  count                      = length(var.securityRuleFromPort)
  source                     = "../security_group_rule_module"
  securityGroupIdToAddRuleTo = data.aws_security_group.get_db_sg.id
  securityRuleFromPort       = var.securityRuleFromPort[count.index]
  securityRuleToPort         = var.securityRuleToPort[count.index]
  #securityGroupRuleCidrBlock = data.aws_subnet.get_app_tier_subnet_cidr_block_for_db_security_group.cidr_block
  #inboundTrafficSourceSecurityGroupId = data.aws_security_group.getTomcatSecurityGroup.id
}