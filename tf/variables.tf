variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Prefix for tagging"
  type        = string
  default     = "kratos"
}
