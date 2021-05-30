resource "aws_iam_policy" "prod_ci_policy" {
  name        = "prod_ci_policy"
  path        = "/"
  description = "Prod CI policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
