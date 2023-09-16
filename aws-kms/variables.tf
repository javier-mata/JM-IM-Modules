variable "description" {
  description = "Key Description"
}
variable "key_name" {
  description = "Key Name"
}
variable "tags" {
  description = "A mapping of tags to assign Key"
  type        = map(string)
  default     = {}
}