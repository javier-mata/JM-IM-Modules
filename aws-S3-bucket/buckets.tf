# S3 Bucket

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags   = var.tags
  lifecycle {
    prevent_destroy = true
  }
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

