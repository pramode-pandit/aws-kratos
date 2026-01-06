
output "public_subnet_id" {
  description = "ID of the Public Subnet"
  value = aws_subnet.public_subnet.id
}

output "public_subnet_cidr" {
  description = "CTDR of the Public Subnet"
  value = aws_subnet.public_subnet.cidr_block
}


output "public_subnet_name" {
  description = "Name of the Public Subnet"
  value = aws_subnet.public_subnet.tags["Name"]
}

output "public_subnet_route_name" {
  description = "Name of the Public Subnet Route table"
  value = aws_route_table.public_rt.tags["Name"]
}