variable "bucket_name" {
  description = "S3 Bucket Name"
}
variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}