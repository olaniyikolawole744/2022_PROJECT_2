# Template for creating ec2 instance
resource "aws_instance" "server_template" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = var.key_name
  vpc_security_group_ids      = [data.aws_security_group.securityGroupToAttachToECEInstance.id]
  subnet_id                   = data.aws_subnet.subnet_to_place_server.id
  user_data                   = var.user_data
  
  tags = {
    Name = var.server_name
  }
}