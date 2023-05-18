resource "google_storage_bucket" "this" {
  name     = "${var.name}-bucket-test"
  location = var.region
}