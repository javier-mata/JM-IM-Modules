variable "policy_name" {
  description = "Name Assigned to Policy"
}
variable "policy_statement" {
  description = "Policy Statement and JSON"
}
variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}