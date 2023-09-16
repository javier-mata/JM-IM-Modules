variable "role" {
  description = "Role Name"
  type        = string
}
variable "role_attachment" {
  description = "List of policies to attach to EC2 instance role"
  type = map(object({
    policy_arn = string
  }))
  default = {}
}