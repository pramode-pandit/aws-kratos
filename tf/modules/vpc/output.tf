output "vpc_id" {
  description = "ID of the VPC"
  value = aws_vpc.main.id
}

output "vpc_name" {
  description = "Name of the VPC"
  value = aws_vpc.main.tags["Name"]
}




