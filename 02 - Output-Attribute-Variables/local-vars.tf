locals {
  common_tags = {
    Creator = "Devops team"
    Using   = "Terraform"
  }
}

resource "aws_instance" "localec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "localebs" {
  availability_zone = "ap-south-1"
  tags              = local.common_tags
  size              = 8
}
