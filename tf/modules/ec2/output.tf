
output "ec20_key_name" {
  description = "ID of the ec2o instance key"
  value = aws_key_pair.ec20_key.key_name
}

output "ec20_instance_name" {
  description = "Name of the EC2 instance"
  value = aws_instance.t3_micro_vm.tags["Name"]
}


output "ec20_sec_grp" {
  description = "Name of the EC20 Security Group"
  value = aws_security_group.ec20_sec_grp.tags["Name"]
}


