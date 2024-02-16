output "ip-netology-develop-platform-db" { 
  value = yandex_compute_instance.platform.network_interface[0].nat_ip_address
}
output "ip-netology-develop-platform-web" { 
  value = yandex_compute_instance.platform-db.network_interface[0].nat_ip_address
}