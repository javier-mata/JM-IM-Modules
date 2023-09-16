output "bucket_name" {
  value       = aws_s3_bucket.bucket.bucket
  description = "S3 Bucket Name"
  sensitive   = false
}
