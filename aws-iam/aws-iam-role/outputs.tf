output "role_name" {
  value       = aws_iam_role.role.name
  description = "Role ID"
  sensitive   = false
}

output "role_arn" {
  value       = aws_iam_role.role.arn
  description = "Role ARN"
  sensitive   = false
}