
variable "vpc_id" {
  description = "VPC ID to attach SG"
  type        = string
}

variable "subnet_id" {
  description = "Subnet to attach the EC2 to"
  type        = string
}

variable "ec20_key_name" {
  description = "Name of the EC20 Key"
  type        = string
  default     = "ec20_key"
}


variable "ec20_instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "ec20"
}



variable "ec20_sec_grp" {
  description = "Name of the EC20 Security Group"
  type        = string
  default     = "ec20_sec_grp"
}