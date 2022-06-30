terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "aws-Prep" {
  ami             = "ami-0a9d27a9f4f5c0efc"
  instance_type   = "t2.micro"
  key_name        = "dropmailtokishan" # this is the pem file name associated with the server
  security_groups = ["launch-wizard-1"]
  tags = {
    Name = "Terraform Created server"
  }
}
