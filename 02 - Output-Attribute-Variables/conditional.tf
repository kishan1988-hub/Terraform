resource "aws_instance" "dev" {
  ami = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
  count = var.istest == true ? 3 : 0
}

resource "aws_instance" "UAT" {
  ami = "ami-082b5a644766e0e6f"
  instance_type = "t2.medium"
  count = var.istest == false ? 1 : 0
}
