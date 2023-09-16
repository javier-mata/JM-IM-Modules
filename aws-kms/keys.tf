resource "aws_kms_key" "kms_key" {
  description         = var.description
  enable_key_rotation = true
  is_enabled          = true
  multi_region        = false
  tags                = var.tags
}
resource "aws_kms_alias" "kms_alias" {
  name          = "alias/${var.key_name}"
  target_key_id = aws_kms_key.kms_key.key_id
}