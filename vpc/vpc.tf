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

# Create a VPC
resource "aws_vpc" "tb_vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "tb_vpc"
  }
}

#Create Internet Gateway
resource "aws_internet_gateway" "tb_vpc_igw" {
  vpc_id = aws_vpc.tb_vpc.id

  tags = {
    Name = "tb_vpc_internet_gateway"
  }
}

# Create a route table
resource "aws_route_table" "tb_vpc_rt" {
  vpc_id = aws_vpc.tb_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tb_vpc_igw.id
  }

  tags = {
    Name = "tb_vpc_route_table"
  }
}

# Create subnets
module "createSubnet" {
  source                 = "../subnet_module"
  count                  = 4
  vpcId                  = aws_vpc.tb_vpc.id
  subnetCidrBlock        = var.subnetCidrBlock[count.index]
  subnetAvailabilityZone = var.subnetAvailabilityZone[count.index]
  subnetTagName          = var.subnetTagName[count.index]
  tier                   = var.tier[count.index]
}

# Associate public subnet with route table
resource "aws_route_table_association" "associateSubnetWithRouteTable" {
  count          = length(var.getSubnetDataSourceFilterValue)
  subnet_id      = data.aws_subnet.getSubnets[count.index].id
  route_table_id = aws_route_table.tb_vpc_rt.id
}

# Create security group
module "createSecurityGroup" {
  count               = 5
  source              = "../security_group_module"
  sg_name             = var.sg_name[count.index]
  sg_description_main = var.sg_description_main[count.index]
  sg_tag_name         = var.sg_tag_name[count.index]
  vpc_id              = aws_vpc.tb_vpc.id
}