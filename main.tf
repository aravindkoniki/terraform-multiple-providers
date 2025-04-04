module "non_prod_bucket" {
  source      = "./module?version=${var.module_versions.firewall}"
  bucket_name = "${var.bucket_name}2654658"
}