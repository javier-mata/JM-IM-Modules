resource "aws_iam_policy" "role_policy" {
  name = var.policy_name
  #  role = aws_iam_role.role.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = var.policy_statement
}

