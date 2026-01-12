variable "name" { type = string }
variable "tags" { type = map(string) }

variable "vpc_id" { type = string }
variable "public_subnet_ids"  { type = list(string) }
variable "private_subnet_ids" { type = list(string) }

variable "instance_type" { type = string }
variable "ami_id" { type = string }
variable "app_user_data" { type = string }

variable "desired_capacity" { type = number }
variable "min_size" { type = number }
variable "max_size" { type = number }
