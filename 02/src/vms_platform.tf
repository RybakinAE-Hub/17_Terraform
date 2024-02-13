  variable "vm_db_default_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
  variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "name"
}
  variable "vm_db_platform" {
  type        = string
  default     = "standard-v1"
  description = "platform_id"
}
  variable "vm_db_cores" {
  type        = number
  default     = "2"
  description = "cores"
}
  variable "vm_db_memory" {
  type        = number
  default     = "2"
  description = "memory"
}
  variable "vm_db_core" {
  type        = number
  default     = "20"
  description = "core_fraction"
}
  variable "vm_db_image_id" {
  type        = string
  default     = "data.yandex_compute_image.ubuntu.image_id"
  description = "image_id"
}
  variable "vm_db_preemptible" {
  type        = bool
  default     = "true"
  description = "preemptible"
}
  variable "vm_db_subnet" {
  type        = string
  default     = "yandex_vpc_subnet.develop.id"
  description = "subnet_id"
}
  variable "vm_db_nat" {
  type        = bool
  default     = "true"
  description = "nat"
}
