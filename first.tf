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

resource "aws_instance" "Dev" {
  ami             = "ami-0a9d27a9f4f5c0efc"
  instance_type   = "t2.micro"
  key_name        = "dropmailtokishan" # this is the pem file name associated with the server
  security_groups = ["launch-wizard-1"]
  count           = var.istest == true ? 1 : 0
}


resource "aws_instance" "UAT" {
  ami             = "ami-0a9d27a9f4f5c0efc"
  instance_type   = "t2.medium"
  key_name        = "dropmailtokishan" # this is the pem file name associated with the server
  security_groups = ["launch-wizard-1"]
  count           = var.istest == false ? 1 : 0
}
