terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-west-2"
} 

resource "aws_instance" "name" {
  ami = "ami-01b20f5ea962e3fe7"
  instance_type = "t2.micro"

  tags = {
    Name = "Primeira instancia"
  }
}