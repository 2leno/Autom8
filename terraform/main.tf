terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Instance EC2
resource "aws_instance" "autom8_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Autom8-Server"
    Environment = var.environment
  }
}

# Bucket S3
resource "aws_s3_bucket" "autom8_bucket" {
  bucket = "autom8-bucket-${random_id.bucket_suffix.hex}"
  tags = {
    Name = "Autom8-Bucket"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# Security Group
resource "aws_security_group" "autom8_sg" {
  name        = "autom8-security-group"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "instance_ip" {
  value = aws_instance.autom8_server.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.autom8_bucket.id
}