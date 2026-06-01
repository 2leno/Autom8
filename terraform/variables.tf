variable "aws_region" {
  description = "Région AWS"
  type        = string
  default     = "eu-west-3"  # Paris
}

variable "ami_id" {
  description = "ID de l'AMI Ubuntu"
  type        = string
  default     = "ami-0e86e20dae9224db8"  # Ubuntu 22.04 LTS
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t2.micro"
}

variable "environment" {
  description = "Environnement"
  type        = string
  default     = "dev"
}