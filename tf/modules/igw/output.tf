
output "igw_id" {
  description = "ID of the IGW"
  value = aws_internet_gateway.main.id
}

output "igw_name" {
  description = "Name of the IGW"
  value = aws_internet_gateway.main.tags["Name"]
}


