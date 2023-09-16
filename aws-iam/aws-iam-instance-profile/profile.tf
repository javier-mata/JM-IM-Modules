resource "aws_iam_instance_profile" "ec2_profile" {
  name = var.profile_name
  role = var.role_name
}