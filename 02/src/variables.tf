###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}
variable "vpc_db_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIcctq4cYZC5AZ0OF/5Du8i+h0zP4gwLe8/2gk2cTh66"
  description = "ssh-keygen -t ed25519"
}
  variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "name"
}
  variable "vm_web_platform" {
  type        = string
  default     = "standard-v1"
  description = "platform_id"
}
  variable "vm_web_cores" {
  type        = number
  default     = "2"
  description = "cores"
}
  variable "vm_web_memory" {
  type        = number
  default     = "1"
  description = "memory"
}
  variable "vm_web_core" {
  type        = number
  default     = "5"
  description = "core_fraction"
}
  variable "vm_web_image_id" {
  type        = string
  default     = "data.yandex_compute_image.ubuntu.image_id"
  description = "image_id"
}
  variable "vm_web_preemptible" {
  type        = bool
  default     = "true"
  description = "preemptible"
}
  variable "vm_web_subnet" {
  type        = string
  default     = "yandex_vpc_subnet.develop.id"
  description = "subnet_id"
}
  variable "vm_web_nat" {
  type        = bool
  default     = "true"
  description = "nat"
}
