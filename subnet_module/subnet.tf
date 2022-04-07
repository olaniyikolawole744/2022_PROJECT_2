#Template for creating subnets
resource "aws_subnet" "subnetTemplate" {
  vpc_id                  = var.vpcId #aws_vpc.tb_vpc.id
  cidr_block              = var.subnetCidrBlock #"eg 10.0.16.0/24"
  availability_zone       = var.subnetAvailabilityZone #"eg us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnetTagName #"eg public_subnet_zone_a"
    Tier = var.tier #"public/private"
  }
}