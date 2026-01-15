
variable "ngw_name" {
  description = "Name of the NAT GW"
  type        = string
  default     = "my-ngw"
}

variable "subnet_id" {
  description = "Public SUBNET ID to attach the NGW to"
  type        = string
}