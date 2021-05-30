resource "aws_iam_user" "prod_ci_user" {
  name = "prod_ci_user"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "prod_ci_user_access_key" {
  user = aws_iam_user.prod_ci_user.name
}

resource "aws_iam_user_policy" "prod_ci_user_policy" {
  name = "prod_ci_user_policy"
  user = aws_iam_user.prod_ci_user.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
