# Templayte to create security groups
resource "aws_security_group" "sg_template" {
  name        = var.sg_name
  description = var.sg_description_main
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}

