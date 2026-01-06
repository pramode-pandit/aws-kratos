
variable "vpc_id" {
  description = "VPC ID to attach the IGW to"
  type        = string
}

variable "gateway_id" {
  description = "GTW ID to add to Public_RT"
  type        = string
}


variable "public_subnet_name" {
  description = "Name of the Subnet"
  type        = string
  default     = "public-subnet"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the Subnet"
  type        = string
  default     = "10.0.1.0/24"
}

