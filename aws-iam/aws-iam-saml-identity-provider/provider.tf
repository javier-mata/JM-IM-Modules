resource "aws_iam_saml_provider" "saml_provider" {
  name                   = var.name
  saml_metadata_document = file(var.saml_metadata_document)
}