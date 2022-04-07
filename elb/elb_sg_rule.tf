module "createElbSecurityRuleIngress" {
  source = "../elb_security_group_rule_module"

  elbSecurityGroupIdToAddRuleTo = data.aws_security_group.getSecurityGroupToAttachToELB.id
  elbSecurityRuleFromPort       = var.elbSecurityRuleFromPort
  elbSecurityRuleToPort         = var.elbSecurityRuleToPort
  elbSecurityGroupRuleCidrBlock = var.elbSecurityGroupRuleCidrBlock
}