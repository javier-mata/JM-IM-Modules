output "policy_name" {
  value       = aws_iam_policy.role_policy.name
  description = "Policy Name"
  sensitive   = false
}
output "policy_arn" {
  value       = aws_iam_policy.role_policy.arn
  description = "Policy ARN"
  sensitive   = false
}