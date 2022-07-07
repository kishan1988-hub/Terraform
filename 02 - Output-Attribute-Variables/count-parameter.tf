variable "lb_name" {
  default = ["dev-lb-user", "uat-lb-user", "prd-lb-user"]
  type = list
}

resource "aws_iam_user" "lb_user" {
    name = var.lb_name[count.index]
    count = 3
    path = "/system/"
}
