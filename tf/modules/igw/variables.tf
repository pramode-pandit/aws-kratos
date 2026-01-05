
variable "igw_name" {
  description = "Name of the IGW"
  type        = string
  default     = "my-igw"
}

variable "vpc_id" {
  description = "VPC ID to attach the IGW to"
  type        = string
}