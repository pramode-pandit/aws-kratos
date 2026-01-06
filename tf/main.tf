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

# ------------------------
# Subnet
# ------------------------
module "subnet" {
  source = "./modules/subnet"
  public_subnet_name = "kratos-public-subnet"
  vpc_id = module.vpc.vpc_id
  public_subnet_cidr = "10.0.1.0/24"
  gateway_id = module.igw.igw_id

}