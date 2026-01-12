variable "project" { type = string }
variable "env"     { type = string }
variable "region"  { type = string }

variable "vpc_cidr" { type = string }

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "instance_type" { type = string }

# Amazon Linux 2023 AMI id (דוגמה) - תשים משלך לפי region
variable "ami_id" { type = string }

variable "desired_capacity" { type = number }
variable "min_size"         { type = number }
variable "max_size"         { type = number }

# דמו ל-app: user_data שמרים nginx (כדי לבדוק end-to-end)
variable "app_user_data" {
  type    = string
  default = <<-EOT
    #!/bin/bash
    dnf -y update
    dnf -y install nginx
    systemctl enable nginx
    systemctl start nginx
    echo "ok-from-aws" > /usr/share/nginx/html/index.html
  EOT
}
