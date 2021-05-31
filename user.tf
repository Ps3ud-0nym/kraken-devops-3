// Create an IAM user.

resource "aws_iam_user" "main" {
  name = var.iam_user_name
}

// Add IAM user to IAM group.

resource "aws_iam_user_group_membership" "main" {
  user = aws_iam_user.main.name

  groups = [
    aws_iam_group.main.name # Refers to IAM group created within this module.
  ]
}
