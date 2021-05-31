resource "aws_iam_group" "main" {
  name = var.iam_group_name
  path = "/"
}
