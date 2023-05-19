resource "google_bigquery_table" "table" {
    table_id = var.name
    dataset_id = google_bigquery_dataset.dataset.dataset_id
    project = var.project
}