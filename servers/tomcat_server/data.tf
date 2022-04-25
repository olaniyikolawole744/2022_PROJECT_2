#Data source to fetch httpd security group for inbound traffic
data "aws_security_group" "getHttpdSecurityGroupName" {
  filter {
    name   = "tag:Name"
    values = [var.httpdSecurityGroupName]
  }
}

#Data source to fetch tomcat security group id
data "aws_security_group" "getTomcatSecurityGroupName" {
  filter {
    name   = "tag:Name"
    values = [var.tomcatSecurityGroupName]
  }
}

# Data source to bootstrap launch files
data "template_file" "bootstrapFileToLaunchWithEC2Instance" {
  template = file("${path.module}/${"tomcat_bootstrap"}.txt")
}

# Data source to get AMI
data "aws_ami" "getGoldenImageAMI" {
  most_recent = true

  filter {
    name   = "name"
    values = ["golden_Ami_Image_With_Ec2_User"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["self"]
}



