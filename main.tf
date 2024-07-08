terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2" {
  ami           = "ami-01376101673c89611"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorldterraformcloud"
    Team= "devops"
  }"
  }
}

