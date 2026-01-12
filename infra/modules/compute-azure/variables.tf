variable "name" { type = string }
variable "location" { type = string }
variable "resource_group_name" { type = string }

variable "public_subnet_id"  { type = string }
variable "private_subnet_id" { type = string }

variable "vm_sku" { type = string }
variable "instance_count" { type = number }

variable "admin_username" { type = string }
variable "admin_ssh_public_key" { type = string }
variable "cloud_init" { type = string }

variable "tags" { type = map(string) }
