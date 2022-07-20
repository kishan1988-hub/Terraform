resource "aws_iam_user" "zip_user" {
  name = "iam_user.${count.index}"
  count = 3
  path = "/system/"

}

output "arn" {
  value = aws_iam_user.zip_user[*].arn
}

output "name" {
  value = aws_iam_user.zip_user[*].name
}

output "zipmap" {
  value = zipmap (aws_iam_user.zip_user[*].name,aws_iam_user.zip_user[*].arn)
}
