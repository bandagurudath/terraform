# output "azs" {
#   value=data.aws_availability_zones.zones
# }

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
  value = aws_subnet.database[*].id
}

output "db_subnet_group_id" {
  value = aws_db_subnet_group.default.id
}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.default.name
}

output "aws_internet_gateway_id" {
  value = aws_internet_gateway.gw.id
}