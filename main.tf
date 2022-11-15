terraform {
      required_providers {
         aws = {
         source = "hashicorp/aws"
         version = "= 3.74.2"
        }
     }
  }

provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "terraform_ec2_example" {
  ami = "ami-04374945a94beb018"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform EC2"
  }
}