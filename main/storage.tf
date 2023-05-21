resource "google_storage_bucket" "this" {
  name                     = "${var.name}-${var.env}-bucket"
  location                 = var.region
  public_access_prevention = "enforced"
  retention_policy {
    retention_period = "3600000" //1000 hours
  }
}