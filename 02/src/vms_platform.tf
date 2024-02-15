  ###Сеть
variable "vpc_db_name" {
  type        = string
  default     = "develop-db"
  description = "VPC network & subnet name"
}
variable "default_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "db_name"
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
  variable "vm_db_subnet" {
  type        = string
  default     = "yandex_vpc_subnet.develop-db.id"
  description = "subnet_id"
}
