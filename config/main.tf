provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "AppServer"
  }
}

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "ami_id" {
  description = "The AMI ID for the application server"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the application server"
  type        = string
  default     = "t2.micro"
}
