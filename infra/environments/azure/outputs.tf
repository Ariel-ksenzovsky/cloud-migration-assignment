output "lb_public_ip" {
  value = module.compute.lb_public_ip
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}
