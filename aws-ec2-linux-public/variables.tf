variable "default_region" {
  description = "Default Region"
}
variable "instance_type" {
  description = "Micro Instance Type"
}
variable "subnet" {
  description = "Subnet Availability Zone"
}
variable "ami_image_type" {
  description = "Image OS and Type"
}
variable "userdata" {
  description = "User Data"
}
variable "security_group" {
  description = "Value of the Security Group Name"
  type        = list(string)
}
variable "kms_key_id" {
  description = "Value of KMS Key to encrypt volumes"
}
variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}
variable "instance_role" {
  description = "Instance IAM Role"
}
variable "key_name" {
  description = "Key Pair Name"
}
variable "root_volume_size" {
  description = "Root Volume Size"
}
