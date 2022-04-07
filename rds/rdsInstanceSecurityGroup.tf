# Calling security group module 
module "createSecurityGroup" {
  source              = "../security_group_module"
  sg_name             = var.sg_name
  sg_description_main = var.sg_description_main
  sg_tag_name         = var.sg_tag_name
  vpc_id              = data.aws_vpc.get_vpc.id
}
