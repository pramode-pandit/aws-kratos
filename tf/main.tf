# ------------------------
# VPC
# ------------------------

module "vpc" {
  source    = "./modules/vpc"
  vpc_cidr  = "10.0.0.0/16"
  vpc_name  = "kratos-vpc"
}



# ------------------------
# Internet Gateway
# ------------------------
module "igw" {
  source = "./modules/igw"
  igw_name = "kratos-igw"
  vpc_id = module.vpc.vpc_id
}