resource "aws_iam_user" "main" {
  name = var.iam_user_name
}

resource "aws_iam_user_group_membership" "main" {
  user = aws_iam_user.main.name

  groups = [
    aws_iam_group.main.name
  ]
}
