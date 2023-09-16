resource "aws_iam_user" "cli_user" {
  name          = var.user_name
  path          = "/"
  force_destroy = true
  tags          = var.tags
}

resource "aws_iam_user_policy_attachment" "policy_attachment" {
  for_each   = var.role_attachment
  user       = aws_iam_user.cli_user.name
  policy_arn = each.value.policy_arn
}
