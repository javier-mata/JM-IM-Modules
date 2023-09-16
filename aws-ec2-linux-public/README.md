
# Example: 
```
module "Linux_Test" {
count = 1
source = "github.com/Flutter-Global/wpt-aws-terraform-modules/aws-ec2-linux"
subnet = "subnet-0318b83ff5ad3902c"
instance_type = "t2.medium"
ami_image_type = var.ami_image_type["Linux"]
instance_role = "AmazonSSMRoleForInstancesQuickSetup"
root_volume_size = "80"
add_volume_size = "50"
key_name = "Key Name"
server = "JMSSMTEST01${count.index+1}"
default_region = var.default_region
userdata = null
backup = "True"
tags = {
Environment = "Production"
Backup = "True"
Owner = "Workplace Tech"
OS = "Linux"
Patch_Group = "Production"
}
```

# Your variables tfvar:
```
variable "default_region" {
description = "Value Default Region"
type        = string
default     = "eu-west-1"
}
variable "ami_image_type" {
type = map
default = {
"linux" = "ami-0fe0b2cf0e1f25c8a"
"w2022"    = "ami-0142f1ad576b2cc4d"
"w2019" = "ami-040599afc1e185895"
}
}
```

