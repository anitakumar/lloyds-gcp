resource "google_storage_bucket" "this" {
  provider                 = google-beta
  name                     = "${var.name}-${var.env}-bucket"
  storage_class            = "NEARLINE"
  location                 = var.region
  public_access_prevention = "enforced"
  retention_policy {
    # is_locked = true #do not use you cannot change the retention period
    retention_period = "72000" //1000 hours
  }
  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }

  }
  labels = {
    "env" = "dev"
  }
  uniform_bucket_level_access = true
  force_destroy               = true

}
resource "google_storage_bucket_object" "this" {
  name   = "${var.name}-${var.env}-${var.filename}"
  bucket = google_storage_bucket.this.name
  source = "${path.module}/${var.filename}"
}