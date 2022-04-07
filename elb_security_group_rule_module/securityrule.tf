# resource to create security rule for ingress creation
resource "aws_security_group_rule" "securityRuleTemplate" {
  description       = "Add additional Inbound Rule to Security Group"
  type              = "ingress"
  security_group_id = var.elbSecurityGroupIdToAddRuleTo
  from_port         = var.elbSecurityRuleFromPort
  to_port           = var.elbSecurityRuleToPort
  protocol          = "tcp"
  cidr_blocks       = [var.elbSecurityGroupRuleCidrBlock]
}