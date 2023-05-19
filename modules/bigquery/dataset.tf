resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = var.name
  friendly_name               = var.name
  description                 = "This is a test dataset"
  location                    = var.location
  default_table_expiration_ms = 3600000

  labels = {
    env = var.name
  }
  project = var.project

#   access {
#     role          = "OWNER"
#     user_by_email = google_service_account.bqowner.email
#   }

#   access {
#     role   = "READER"
#     domain = "hashicorp.com"
#   }
}

# resource "google_service_account" "bqowner" {
#   account_id = "bqowner"
# }