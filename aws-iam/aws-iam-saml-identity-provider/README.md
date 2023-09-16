# Example:

```
module "appstream_saml_provider" {
source = "github.com/Flutter-Global/wpt-aws-terraform-modules/aws-iam/aws-iam-saml-identity-provider"
   name  = "okta_prod_tenant_sports_app"
  saml_metadata_document = "okta_metadata_live.xml"
 }

 ```