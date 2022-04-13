# Output the vpc id
output "infrastructure_vpc_id" {
  value       = aws_vpc.tb_vpc.id
  description = "Infrastructure vpc id"
}