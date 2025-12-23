output "azs_info" {
  value       = data.aws_availability_zones.available
}

output "public_subnet_output" {
  value    = aws_subnet.public
}

output "default_vpc_route_table_id" {
  value = data.aws_route_table.main.id
}

output "vpc_id" {
  value  = aws_vpc.main.id 
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "database_subnet_ids" {
  value = aws_subnet.public[*].id
}



