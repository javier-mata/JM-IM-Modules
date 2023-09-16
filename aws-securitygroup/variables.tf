
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
variable "sg_id" {
  description = "SG ID"
}