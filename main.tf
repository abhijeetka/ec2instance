# Provider Requirements
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

# AWS Provider (aws) with region set to 'us-east-1'
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance_1" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}

variable "instance_ami" {
  description = "Value of the AMI ID for the EC2 instance"
  type        = string
  default = "ami-0cff7528ff583bf9a"
}


variable "instance_name" {
  description = "Value of the Name Tag for the EC2 instance"
  type        = string
  default = "tf-demo-ec2-instance"
}

variable "instance_type" {
  description = "Value of the Instance Type for the EC2 instance"
  type        = string
  default = "t2.micro"
}
