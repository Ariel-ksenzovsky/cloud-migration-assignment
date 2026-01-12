variable "project" { type = string }
variable "env"     { type = string }
variable "location" { type = string }

variable "vnet_cidr" { type = string }

variable "public_subnet_cidr"  { type = string }
variable "private_subnet_cidr" { type = string }

variable "vm_sku" { type = string }

variable "instance_count" { type = number }

variable "admin_username" { type = string }

# SSH public key content
variable "admin_ssh_public_key" { type = string }

# cloud-init שמרים nginx (לבדיקה)
variable "cloud_init" {
  type = string
  default = <<-EOT
    #cloud-config
    package_update: true
    packages:
      - nginx
    runcmd:
      - systemctl enable nginx
      - systemctl start nginx
      - echo "ok-from-azure" > /var/www/html/index.nginx-debian.html
  EOT
}
