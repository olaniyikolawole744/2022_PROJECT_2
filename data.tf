# Get public subnet from vpc for route table association
data "aws_subnet" "getSubnets" {
  count = length(var.getSubnetDataSourceFilterValue)

  filter {
    name   = "tag:Name"
    values = [var.getSubnetDataSourceFilterValue[count.index]]
  }

  depends_on = [
    module.createSubnet
  ]
}