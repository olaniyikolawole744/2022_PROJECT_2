#Data source to fetch httpd security group id
data "aws_security_group" "getHttpdSecurityGroupName" {
  filter {
    name   = "tag:Name"
    values = [var.httpdSecurityGroupName]
  }
}

#Data source to fetch elb security group for inbound traffic
data "aws_security_group" "getElbSecurityGroupName" {
  filter {
    name   = "tag:Name"
    values = [var.elbSecurityGroupName]
  }
}

# Data source to bootstrap launch files
data "template_file" "bootstrapFileToLaunchWithEC2Instance" {
  template = file("${path.module}/${"httpd_bootstrap"}.txt")
}

# Data source to get AMI
data "aws_ami" "getGoldenImageAMI" {
  most_recent = true

  filter {
    name   = "name"
    values = ["golden_Ami_Image_With_Ansible_User"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["self"]
}