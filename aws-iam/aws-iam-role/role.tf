resource "aws_iam_role" "role" {
  name               = var.role_name
  path               = "/"
  assume_role_policy = var.policy_json
  tags               = var.tags
}
