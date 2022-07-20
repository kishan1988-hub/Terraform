
resource "aws_iam_user" "splat_iam" {
    name = "iamuser.${count.index}"
    count = 3
    path = "/system/"
}

output "splat_iam_out"{
  value = aws_iam_user.splat_iam[*].arn
}
