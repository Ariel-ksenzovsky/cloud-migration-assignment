output "lb_dns_name" {
  value = module.compute.lb_dns_name
}

output "bucket_name" {
  value = module.storage.bucket_name
}
