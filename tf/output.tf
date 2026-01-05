
output "vpc" {
  description = "VPC details"
  value = {
    id   = module.vpc.vpc_id
    name = module.vpc.vpc_name
  }
}