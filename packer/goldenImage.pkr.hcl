//export PKR_VAR_aws_access_key=AKIA6PTJFZRO24ETGN6C
// export PKR_VAR_aws_secret_key=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


variable "aws_access_key" {
  type = string
  #secret = true
}


variable "aws_secret_key" {
  type = string
  #secret = true
}

source "amazon-ebs" "basic-example" {
  access_key    = var.aws_access_key
  secret_key    = var.aws_secret_key
  region        = "us-east-1"
  source_ami    = "ami-033b95fb8079dc481"
  instance_type = "t2.micro"
  ssh_username  = "ec2-user"
  ami_name      = "golden_Ami_Image_With_Ansible_User"
}

build {
  sources = [
    "source.amazon-ebs.basic-example"
  ]

  provisioner "file" {
    destination = "/tmp/"
    source      = "tf-packer"
  }

  provisioner "file" {
    destination = "/tmp/"
    source      = "tf-packer.pub"
  }

  provisioner "file" {
    source      = "index.html"
    destination = "/tmp/index.html"
  }

  provisioner "shell" {
    script = "launchFile.txt"
   }

  provisioner "shell" {
    script = "dynamicInventory.txt"
  }
}