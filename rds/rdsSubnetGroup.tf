# Resource to create database subnet group
resource "aws_db_subnet_group" "subnetGroupTemplate" {
  name       = var.subnet_group_name
  subnet_ids = [data.aws_subnet.get_subnet_ids_from_vpc_for_subnet_group_aza.id, data.aws_subnet.get_subnet_ids_from_vpc_for_subnet_group_azb.id]

  tags = {
    Name = var.subnetGroupTagname
  }
}

