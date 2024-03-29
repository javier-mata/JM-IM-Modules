output "key_arn" {
  value       = aws_kms_key.kms_key.arn
  description = "Key ARN"
  sensitive   = false
}
output "key_id" {
  value       = aws_kms_key.kms_key.key_id
  description = "Key ID"
  sensitive   = false
}