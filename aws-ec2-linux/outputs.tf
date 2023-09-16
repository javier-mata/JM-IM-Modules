output "EC2_Instance" {
  value       = aws_instance.EC2_Instance.id
  description = "AWS EC2 instance ID"
  sensitive   = false
}
output "EC2_Instance_IP" {
  value       = aws_instance.EC2_Instance.private_ip
  description = "AWS EC2 Instance IP"
  sensitive   = false
}
output "EC2_Instance_Interface" {
  value       = aws_instance.EC2_Instance.primary_network_interface_id
  description = "AWS EC2 Instance NIC"
  sensitive   = false
}
#output "sg_attachment_id" {
# value       = aws_network_interface_sg_attachment.sg_attachment.id
# description = "SG Attachment ID"
# sensitive   = false
#}