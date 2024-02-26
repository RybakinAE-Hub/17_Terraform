
data "yandex_compute_image" "ubuntu" {
  family = "ubuntu-2004-lts"
}

  resource "yandex_compute_instance" "web" {
    name  = "web-${count.index+1}"
    platform_id = "standard-v1"
    count = 2

resources {
    cores         = 2
    memory        = 1
    core_fraction = 10
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
    security_group_ids = [yandex_vpc_security_group.example.id]
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  } 
  
}