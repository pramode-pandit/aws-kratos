# ------------------------
# MODULE - KERATOS EC20 - PUBLIC SUBNET 
# ------------------------



##########################################
# Create EC2 Key Pair Automatically
##########################################

resource "tls_private_key" "ec20_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ec20_key" {
  key_name   = var.ec20_key_name
  public_key = tls_private_key.ec20_key.public_key_openssh

  depends_on = [tls_private_key.ec20_key] 
}

# Save private key locally

resource "local_file" "private_ec2_key1" {
  content  = tls_private_key.ec20_key.private_key_pem
  filename = "${path.module}/${var.ec20_key_name}.pem"
  file_permission = "0600"
}




##########################################
# --- Security Group allowing SSH ---
##########################################


resource "aws_security_group" "ec20_sec_grp" {
  name        = var.ec20_sec_grp
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.ec20_sec_grp
  }
}


##########################################
# --- EC2 Instance ---
##########################################

# Fetch the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# Create EC2 instance

resource "aws_instance" "t3_micro_vm" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  key_name                    = var.ec20_key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.ec20_sec_grp.id]
  associate_public_ip_address = true


# Root Volume Configuration
  root_block_device {
    volume_size = 8         # in GB
    volume_type = "gp2"       # gp2, gp3, io1, io2, etc.
    delete_on_termination = true
    encrypted = false
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y git
              EOF
  
  tags = {
    Name = var.ec20_instance_name
  }

  depends_on = [aws_key_pair.ec20_key, aws_security_group.ec20_sec_grp]  # ensures the key exists before creating EC2
}

