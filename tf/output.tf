
output "vpc" {
  description = "VPC details"
  value = {
    id   = module.vpc.vpc_id
    name = module.vpc.vpc_name
  }
}



output "igw" {
  description = "IGW details"
  value = {
    vpc_id   = module.vpc.vpc_id
    igw_name = module.igw.igw_name
  }
}