
###сетевой адрес
variable "vm_db_name" {
  type        = string
  default     = "develop-a"
  description = "subnet name"
}
variable "vm_db_default_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "vm_db_default_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_instance_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "instance_name"
}
variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "platform_id"
}
/*variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "cores"
}
variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "memory"
}
variable "vm_db_core" {
  type        = number
  default     = 20
  description = "core"
}*/
variable "vm_db_preemptible" {
  type        = bool
  default     = "true"
  description = "preemptible"
}
variable "vm_db_nat" {
  type        = bool
  default     = "true"
  description = "nat"
}



