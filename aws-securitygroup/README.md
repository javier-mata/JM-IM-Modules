# Security group and Security group rules terraform module

## Usage

Creates **security group** and list of rules

```hcl
module "test" {
  source = "aws-sg/"
  name = "test"
  description = "Security group"
  vpc_id      = data.aws_vpc.default.id
  sg_rules = {
    ssh = { description = "ssh ingress", type = "ingress", from_port = "22", to_port = "22", protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] },
    rdp = { description = "Any egress", type = "egress", from_port = "0", to_port = "0", protocol = "-1", cidr_blocks = ["0.0.0.0/0"] },
  }
}
```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.33.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.33.0 |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_tags"></a> [account\_tags](#input\_account\_tags) | resource tags | `map(string)` | `{}` | no |
| <a name="input_create_before_destroy"></a> [create\_before\_destroy](#input\_create\_before\_destroy) | create before destroy | `string` | `"true"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of security group | `string` | `"Managed by Terraform"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Name prefix of security group | `string` | `""` | no |
| <a name="input_sg_rules"></a> [sg\_rules](#input\_sg\_rules) | List of maps defining rules to create | <pre>map(object({<br>    description              = optional(string)<br>    type                     = string<br>    from_port                = string<br>    to_port                  = string<br>    protocol                 = string<br>    cidr_blocks              = optional(list(string))<br>    ipv6_cidr_blocks         = optional(list(string))<br>    source_security_group_id = optional(string)<br>    self                     = optional(bool)<br>  }))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to security group | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID for security group | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | id of the security group |
