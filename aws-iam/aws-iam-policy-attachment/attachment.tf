resource "aws_iam_role_policy_attachment" "policy_attachment" {
  for_each   = var.role_attachment
  role       = var.role
  policy_arn = each.value.policy_arn
}

