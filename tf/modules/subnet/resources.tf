# ------------------------
# MODULES/SUBNET 
# ------------------------

resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_cidr # "10.0.1.0/24" # Ensure this doesn't overlap existing subnets
  map_public_ip_on_launch = true                   # Makes it a "Public" subnet

  tags = {
    Name = var.public_subnet_name
  }
}



#-------------------------
# Custom Route Table
#-------------------------

resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  tags = {
    Name = "keratos-public-subnet-rt"
  }
}


#-------------------------
# Associate the Route Table with the Subnet
#-------------------------


resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}