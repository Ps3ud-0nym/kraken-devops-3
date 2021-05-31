// Create an IAM role and policy allowing group access to assume the role.

resource "aws_iam_role" "main" {
  name = var.iam_role_name 

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole" # Policy that allows permission for entities to assume this role.
        Effect = "Allow"
        Sid    = ""
        Principal = {
          AWS = aws_iam_group.main.arn # Gives IAM group from this module access to the policy.
        }
      },
    ]
  })

}
