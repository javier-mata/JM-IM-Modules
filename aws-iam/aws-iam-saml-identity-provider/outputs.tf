output "saml_arn" {
  value       = aws_iam_saml_provider.saml_provider.arn
  description = "SAML Provider ARN"
  sensitive   = false
}