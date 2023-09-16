variable "user_name" {
  description = "User Name"
}
variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}
variable "role_attachment" {
  description = "List of policies to attach to EC2 instance role"
  type = map(object({
    policy_arn = string
  }))
}