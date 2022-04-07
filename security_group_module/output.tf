#Block to output security group id
output "getSecurityGroupId" {
value = aws_security_group.sg_template.id
description = "security group id"
}