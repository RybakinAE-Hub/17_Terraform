locals {
  web-name = "web-${var.vpc_name}-${var.vm_db_instance_name}-cf${var.vms_resources["vm_web_resources"]["core"]}"
  db-name = "db-${var.vpc_name}-${var.vm_db_instance_name}-cf${var.vms_resources["vm_db_resources"]["core"]}"
}
