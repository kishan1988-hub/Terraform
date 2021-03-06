variable "lb_name" {
  default = ["dev-lb-user", "uat-lb-user", "prd-lb-user"]
  type    = list(any)
}

resource "aws_iam_user" "lb_user-1" {
  name  = var.lb_name[count.index]
  count = 3
  path  = "/system/"
}

resource "aws_iam_user" "lb_user-2" {
  name  = "lbuser"
  count = 3
  path  = "/system/"
}

resource "aws_iam_user" "lb_user-3" {
  name  = "lbuser.${count.index}"
  count = 3
  path  = "/system/"
}

resource "aws_instance" "Dev" {
  ami             = "ami-0a9d27a9f4f5c0efc"
  instance_type   = "t2.micro"
  key_name        = "dropmailtokishan" # this is the pem file name associated with the server
  security_groups = ["launch-wizard-1"]
  count           = 3
}

resource "aws_instance" "Dev-1" {
  ami             = "ami-0a9d27a9f4f5c0efc"
  instance_type   = "t2.micro"
  key_name        = "dropmailtokishan" # this is the pem file name associated with the server
  security_groups = ["launch-wizard-1"]
  count           = var.istest == true ? 3 : 0
}
