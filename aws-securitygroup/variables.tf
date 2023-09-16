variable "name" {
  description = "Name prefix of security group"
  type        = string
  default     = ""
}

variable "description" {
  type        = string
  description = "Description of security group"
  default     = "Managed by Terraform"
}

variable "vpc_id" {
  description = "VPC ID for security group"
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}

variable "sg_rules" {
  description = "List of maps defining rules to create"
  type = map(object({
    description              = optional(string)
    type                     = string
    from_port                = string
    to_port                  = string
    protocol                 = string
    cidr_blocks              = optional(list(string))
    ipv6_cidr_blocks         = optional(list(string))
    source_security_group_id = optional(string)
    prefix_list_ids          = optional(list(string))
    self                     = optional(bool)
  }))
  default = {}
}

variable "create_before_destroy" {
  description = "create before destroy"
  type        = string
  default     = "true"
}
variable "source_security_group_id" {
  description = "Source Security Group"
  type        = string
  default     = "null"
}

