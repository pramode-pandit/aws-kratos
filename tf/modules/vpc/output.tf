output "vpc_id" {
  description = "ID of the VPC"
  value = aws_vpc.main.id
}

output "vpc_name" {
  description = "Name of the VPC"
  value = aws_vpc.main.tags["Name"]
}


output "vpc_cidr" {
  description = "CIDR of the VPC"
  value = aws_vpc.main.cidr_block
}



