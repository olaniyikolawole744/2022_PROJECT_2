# Data source to bootstrap launch files
data "template_file" "bootstrapFileToLaunchWithEC2Instance" {
  template = file("${path.module}/${"tools_bootstrap"}.txt")
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

#Data source to fetch tools security group id
data "aws_security_group" "getToolServerSecurityGroupName" {
  filter {
    name   = "tag:Name"
    values = [var.toolServerSecurityGroupName]
  }
}