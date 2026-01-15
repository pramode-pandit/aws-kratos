# ------------------------
# MODULES/NGW/resouces.tf
# ------------------------



# ----------------------------
# Elastic IP for NAT Gateway
# ----------------------------
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "nat-eip"
  }
}



# ----------------------------
# NAT Gateway
# ----------------------------
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.subnet_id

  tags = {
    Name = var.ngw_name
  }

}