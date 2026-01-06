
output "vpc" {
  description = "VPC details"
  value = {
    id   = module.vpc.vpc_id
    name = module.vpc.vpc_name
    vpc_cidr = module.vpc.vpc_cidr
  }
}



output "igw" {
  description = "IGW details"
  value = {
    vpc_id   = module.vpc.vpc_id
    igw_name = module.igw.igw_name
    igw_id   = module.igw.igw_id
  }
}


output "subnet" {
  description = "Subnet details"
  value = {
    vpc_id   = module.vpc.vpc_id
    public_subnet_name = module.subnet.public_subnet_name
    public_subnet_cidr = module.subnet.public_subnet_cidr
  }
}

output "public_rt" {
  description = "public route details"
  value = {
    route_name = module.subnet.public_subnet_route_name
    igw_id     = module.igw.igw_id
    subnet_id  = module.subnet.public_subnet_id
  }
}
