output "ngw_id" {
  description = "ID of the NGW"
  value = aws_nat_gateway.main.id
}

output "ngw_name" {
  description = "Name of the NGW"
  value = aws_nat_gateway.main.tags["Name"]
}