# Output block to display database endpoint
output "displayDatabaseEndpoint" {
  value = resource.aws_db_instance.rdsDatabaseTemplate.endpoint
}

# Output block to display database username
output "displayDatabaseUsername" {
  value = resource.aws_db_instance.rdsDatabaseTemplate.username
}
