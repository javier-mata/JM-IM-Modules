variable "role_name" {
  description = "Role Name"
}
variable "profile_name" {
  description = "Role Name"
}
variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}