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


# ------------------------
# Public EC2 ec20
# ------------------------
module "ec2" {
  source = "./modules/ec2"
  ec20_instance_name = "kratos-ec20"
  vpc_id = module.vpc.vpc_id
  subnet_id = module.subnet.public_subnet_id
  ec20_sec_grp = "kratos-ec20-sg"
  ec20_key_name = "kratos-ec20-key"

}