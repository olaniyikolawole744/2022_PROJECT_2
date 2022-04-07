# Variables for subnet template
variable vpcId {} #aws_vpc.tb_vpc.id
variable subnetCidrBlock {} #"eg 10.0.16.0/24"
variable subnetAvailabilityZone {} #"eg us-east-1a"
variable subnetTagName {} #"eg public_subnet_zone_a"
variable tier {} #"public/private"